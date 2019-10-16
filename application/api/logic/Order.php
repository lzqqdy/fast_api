<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/10/15
 * Time: 15:22
 */

namespace app\api\logic;

use app\api\library\PayInterface;

class Order extends Base implements PayInterface
{
    public function getPayData($order_sn = null, $user_id = null)
    {
        // TODO: Implement getPayData() method.
        return [];
    }

    public function getNotify($order_sn = null)
    {
        // TODO: Implement getNotify() method.
    }
}