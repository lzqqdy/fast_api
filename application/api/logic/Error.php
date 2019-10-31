<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/10/31
 * Time: 10:21
 */

namespace app\api\logic;

use think\Request;

trait Error
{
    /**
     * 异常返回返回前端
     * @param $data
     */
    protected function apiError($msg = '', $data = null, $code = 0)
    {
        $result = [
            'code' => $code,
            'msg'  => $msg,
            'time' => Request::instance()->server('REQUEST_TIME'),
            'data' => $data,
        ];
        return throw_response_exception($result);
    }
}