<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/7/17
 * Time: 10:35
 */

namespace app\api\logic;

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
    public function getList($param = [])
    {
        //TODO
        $data = [];
        if ($param) {
            $this->apiError('状态错误!', $data, 0); //在逻辑层使用该方法，中止代码以json格式将数据返回
        }
        $ret = $this->modelUser->select(); //不同名模型
        $ret = $this->model->select(); //同名banner模型
        return $ret ?? [];
    }
}