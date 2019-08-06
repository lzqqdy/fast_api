<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/7/24
 * Time: 9:46
 */

namespace app\api\controller;

use app\api\library\BaseException;

/**
 * Miss路由
 * Class Miss
 * @package app\api\controller
 */
class Miss
{

    /**
     * miss
     * @throws BaseException
     */
    public function miss()
    {
        throw new BaseException(['msg' => '404!Not Found', 'code' => 404]);
    }

}