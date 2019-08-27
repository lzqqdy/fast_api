<?php

namespace app\api\controller;

use app\api\library\exception\NoticeException;
use app\api\library\exception\ErrorException;

/**
 * 首页接口
 */
class Index extends Base
{
    //如果$noNeedLogin为空表示所有接口都需要登录才能请求
    //如果$noNeedRight为空表示所有接口都需要验证权限才能请求
    //如果接口已经设置无需登录,那也就无需鉴权了

    // 无需登录的接口,*表示全部
    protected $noNeedLogin = ['*'];
    // 无需鉴权的接口,*表示全部
    protected $noNeedRight = ['*'];

    /**
     *
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
