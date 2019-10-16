<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/10/15
 * Time: 15:17
 */

namespace app\api\logic;

use app\common\library\WxPay;

class Payment extends Base
{
    //支付场景对象
    private $scene;

    //配置参数
    protected $config = array();

    /**
     * 初始化
     * Payment constructor.
     * @param $scene
     */
    public function __construct($scene)
    {
        $this->scene = $this->payFactoryFunc($scene);
        $this->config = $this->getConfig($scene);
        parent::__construct();
    }

    /**
     * 支付
     * @param $order_sn
     * @param $user_id
     * @return array
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
     * @return Order
     */
    public function payFactoryFunc($scene)
    {
        switch ($scene) {
            case 'order':
                $result = new Order();
                break;
            //TODO 扩展更多支付场景
            default:
                $this->apiError('暂不支持的支付场景');
        }
        return $result;
    }
}