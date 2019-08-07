<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/7/18
 * Time: 18:51
 */

namespace app\api\service;

use app\common\library\WxPay;
use app\api\library\exception\BaseException;

class Payment
{
    //支付场景对象
    private $scene;

    //配置参数
    protected $config = array();

    /**
     * 初始化
     * Payment constructor.
     * @param $scene
     * @throws BaseException
     */
    public function __construct($scene)
    {
        $this->scene = self::payFactoryFunc($scene);
        $this->config = $this->getConfig($scene);
    }

    /**
     * 支付
     * @param $order_sn
     * @param $user_id
     * @return array
     * @throws BaseException
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function pay($order_sn, $user_id)
    {
        $payData = $this->scene->getPayData($order_sn, $user_id);
        $retData = array_merge($payData, $this->config);
        $data = (new WxPay($retData))->paying();
        return $data;
    }

    /**
     * 回调
     * @param $order_sn
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function notify($order_sn)
    {
        $this->scene->getNotify($order_sn);
    }


    /**
     * 获取配置
     * @return array
     */
    public function getConfig($scene)
    {
        //获取配置信息
        $app_mch_id = config('site.app_mch_id');
        $app_key = config('site.app_key');
        $app_id = config('site.app_id');
        $notify_url = request()->domain() . config('notify_url'); //异步通知
        $spbill_create_ip = request()->ip(); //IP地址
        $attach = $scene; //设置场景值为额外参数
        return compact('app_id', 'app_key', 'app_mch_id', 'notify_url', 'spbill_create_ip', 'attach');
    }

    /**
     * 仿工厂方法
     * @param $scene
     * @return Order|Recharge
     * @throws BaseException
     */
    public static function payFactoryFunc($scene)
    {
        switch ($scene) {
            case 'recharge':
                $result = new Recharge();
                break;
            case 'order':
                $result = new Order();
                break;
            default:
                throw new BaseException(['msg' => '暂不支持的支付场景', 'code' => 0]);
        }
        return $result;
    }
}