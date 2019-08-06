<?php

namespace addons\geetest\controller;

use addons\geetest\library\GeetestLib;
use fast\Random;
use think\addons\Controller;

class Index extends Controller
{

    public function index()
    {
        $this->error("当前插件暂无前台页面");
    }

    /**
     * 初始化验证码
     */
    public function start()
    {
        // 读取插件配置
        $config = get_addon_config('geetest');
        if (!$config['appid'] || !$config['appkey']) {
            $this->error('请先在后台中配置极验证的参数信息');
        }

        // 优先取网站的登录用户ID，没有的情况下取Session中的值，再没有的情况下随机生成
        $user_id = $this->auth->id ? $this->auth->id : (session('geetest_user_id') ? session('geetest_user_id') : Random::alnum(8));
        $gtSdk = new GeetestLib($config['appid'], $config['appkey']);
        $data = array(
            "user_id"     => $user_id, # 网站用户id
            "client_type" => $this->request->isMobile() ? 'h5' : 'web', #web:电脑上的浏览器；h5:手机上的浏览器，包括移动应用内完全内置的web_view；native：通过原生SDK植入APP应用的方式
            "ip_address"  => $this->request->ip() # 请在此处传输用户请求验证时所携带的IP
        );

        // 判断极验证服务器状态
        $status = $gtSdk->pre_process($data, 1);
        session('geetest_status', $status);
        session('geetest_user_id', $data['user_id']);
        $this->success('', null, $gtSdk->get_response());
    }
}
