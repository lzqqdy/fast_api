<?php

namespace app\api\controller\v1;

use app\api\controller\Base;

/**
 * 首页接口
 * Class Index
 * @package app\api\controller\v1
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
        $param = $this->param; //接收请求过来的参数
        //验证$param
        $validate = new \app\api\validate\User();
        if (!$validate->scene('login')->check($param)) {
            $this->error($validate->getError());
        }
        $data = $this->logicBanner->getList($param); //使用"逻辑前缀+类名"直接调用逻辑层（logic）里的方法
        $this->success('请求成功', $data); //操作成功返回数据
    }

    /**
     * 模拟异常上报
     */
    public function errorException()
    {
        //todo
        //发生代码级别的error
        $a = $b + 1;
        echo $a;
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
