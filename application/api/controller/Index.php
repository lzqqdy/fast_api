<?php

namespace app\api\controller;

use app\common\controller\Api;
use app\api\library\exception\NoticeException;
use app\api\library\exception\ErrorException;

/**
 * 首页接口
 */
class Index extends Api
{
    protected $noNeedLogin = ['*'];
    protected $noNeedRight = ['*'];

    /**
     * 测试接口
     */
    public function test()
    {
        $this->success('请求成功');
    }

    /**
     * 提示级别异常抛出demo
     * @throws NoticeException
     */
    public function noticeException()
    {
        //todo
        //模拟提醒级别的错误，以接口方式返回给前端
        $status = 1;
        $data = ['user_id' => 1, 'c_id' => 2];
        if ($status == 1) {
            //data为写入日志中的数据，不展示
            throw new NoticeException(['msg' => 'status状态错误！', 'data' => $data]);
        }
    }

    /**
     * 错误基本异常抛出demo
     * @throws ErrorException
     */
    public function errorException()
    {
        try {
            //todo
            //发生代码级别的error
            echo $a;
        } catch (\Exception $e) {
            throw new ErrorException(['msg' => $e->getMessage()]);
        }
    }


    /**
     * 首页
     *
     */
    public function index()
    {
        $this->success('请求成功');
    }
}
