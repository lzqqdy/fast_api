<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/7/18
 * Time: 18:50
 */

namespace app\api\controller;


use app\api\logic\Payment as logicPayment;

/**
 * 统一支付接口
 * Class Payment
 * @package app\api\controller
 */
class Payment extends Base
{
    protected $noNeedLogin = ['notify'];
    protected $noNeedRight = ['*'];

    /**
     * 支付
     */
    public function index()
    {
        $user_id = $this->auth->id;
        //scene参数
        $data = $this->request->only('scene,order_sn');
        $validate = new \app\api\validate\Payment();
        if (!$validate->check($data)) {
            $this->error($validate->getError());
        }
        $ret = (new logicPayment($data['scene']))->pay($data['order_sn'], $user_id);
        $this->success('SUCCESS', $ret);
    }

    /**
     * 回调方法
     */
    public function notify()
    {
        //模拟
        $scene = $this->request->post('scene', '');
        $order_sn = $this->request->post('order_sn', '');
        (new logicPayment($scene))->notify($order_sn);
        dd($order_sn);
        // 获取xml
        $xml = file_get_contents('php://input', 'r');
        // 转成php数组
        $attr = $this->toArray($xml);
        $out_trade_no = $attr['out_trade_no'];
        //判断支付状态
        if ($attr['return_code'] == 'SUCCESS') {
            $order_sn = substr($out_trade_no, 0, -6);
            //获取attach
            $attach = $attr['attach'];
            (new logicPayment($attach))->notify($order_sn);
            // 返回状态给微信服务器
            echo "<xml><return_code><![CDATA[SUCCESS]]></return_code><return_msg><![CDATA[OK]]></return_msg></xml>";
        }
    }

    /**
     * 将xml转为array
     * @param  string $xml xml字符串
     * @return array       转换得到的数组
     */
    public function toArray($xml)
    {
        //禁止引用外部xml实体
        libxml_disable_entity_loader(true);
        $result = json_decode(json_encode(simplexml_load_string($xml, 'SimpleXMLElement', LIBXML_NOCDATA)), true);
        return $result;
    }
}