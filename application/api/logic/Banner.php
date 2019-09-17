<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/7/17
 * Time: 10:35
 */

namespace app\api\logic;

use app\api\model\Banner as BannerModel;
use app\api\library\exception\BaseException;

/**
 * Class Banner
 * @package app\api\logic
 */
class Banner extends Base
{
    /**
     * 获取列表
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public static function getList()
    {
        //todo
        return [];
    }
}