<?php

namespace addons\geetest;

use addons\geetest\library\GeetestLib;
use think\Addons;
use think\Validate;

/**
 * 极验证插件
 */
class Geetest extends Addons
{

    /**
     * 插件安装方法
     * @return bool
     */
    public function install()
    {

        return true;
    }

    /**
     * 插件卸载方法
     * @return bool
     */
    public function uninstall()
    {

        return true;
    }

    /**
     * 插件启用方法
     * @return bool
     */
    public function enable()
    {

        return true;
    }

    /**
     * 插件禁用方法
     * @return bool
     */
    public function disable()
    {

        return true;
    }

    /**
     * 自定义captcha验证事件
     */
    public function actionBegin()
    {
        Validate::extend('captcha', function ($value, $id = "") {
            $request = request();
            $geetest_challenge = $request->post('geetest_challenge');
            $geetest_validate = $request->post('geetest_validate');
            $geetest_seccode = $request->post('geetest_seccode');

            if (!$geetest_challenge || !$geetest_validate || !$geetest_seccode) {
                Validate::setTypeMsg('captcha', __('请先完成验证！'));
                return false;
            }
            $data = array(
                "user_id"     => session('geetest_user_id'), # 网站用户id
                "client_type" => $request->isMobile() ? 'h5' : 'web', #web:电脑上的浏览器；h5:手机上的浏览器，包括移动应用内完全内置的web_view；native：通过原生SDK植入APP应用的方式
                "ip_address"  => $request->ip() # 请在此处传输用户请求验证时所携带的IP
            );
            $config = get_addon_config('geetest');
            if (!$config['appid'] || !$config['appkey']) {
                Validate::setTypeMsg('captcha', '请先在后台中配置极验证的参数信息');
                return false;
            }
            $GtSdk = new GeetestLib($config['appid'], $config['appkey']);
            if (session('geetest_status') == 1) {
                //服务器正常
                $result = $GtSdk->success_validate($geetest_challenge, $geetest_validate, $geetest_seccode, $data);
                if (!$result) {
                    Validate::setTypeMsg('captcha', '请先完成验证！');
                    return false;
                }
            } else {
                //服务器宕机,走failback模式
                if (!$GtSdk->fail_validate($geetest_challenge, $geetest_validate, $geetest_seccode)) {
                    Validate::setTypeMsg('captcha', '请先完成验证！');
                    return false;
                }
            }
            return true;
        });
    }

    /**
     * 追加JS中配置
     * @param $params
     */
    public function configInit(&$params)
    {
        $config = get_addon_config('geetest');
        $params['geetest'] = ['product' => $config['product']];
    }

}
