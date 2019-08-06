<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/7/18
 * Time: 19:00
 */

namespace app\api\library;

/**
 * 支付抽象接口
 * Interface PayInterface
 * @package app\api\library
 */
interface PayInterface
{
    function getPayData($order_sn = null, $user_id = null); //获取支付数据

    function getNotify($order_sn = null); //处理支付回调
}