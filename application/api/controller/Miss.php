<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/7/24
 * Time: 9:46
 */

namespace app\api\controller;


/**
 * Miss路由
 * Class Miss
 * @package app\api\controller
 */
class Miss
{
    /**
     * miss
     */
    public function miss()
    {
        throw_response_exception(['msg' => '404!Not Found', 'code' => 404]);
    }
}