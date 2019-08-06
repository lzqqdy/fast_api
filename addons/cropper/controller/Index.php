<?php

namespace addons\cropper\controller;

use think\addons\Controller;
use think\Config;
use think\Hook;

/**
 * 图片裁剪
 *
 */
class Index extends Controller
{

    protected $model = null;

    public function _initialize()
    {
        // 语言检测
        $lang = strip_tags($this->request->langset());
        $site = Config::get("site");
        $upload = \app\common\model\Config::upload();
        // 上传信息配置后
        Hook::listen("upload_config_init", $upload);
        // 配置信息
        $config = [
            'site'           => array_intersect_key($site, array_flip(['name', 'cdnurl', 'version', 'timezone', 'languages'])),
            'upload'         => $upload,
            'modulename'     => 'addons',
            'controllername' => 'index',
            'actionname'     => $this->request->action(),
            'jsname'         => 'cropper',
            'moduleurl'      => rtrim(url("/index", '', false), '/'),
            'language'       => $lang
        ];
        $config = array_merge($config, Config::get("view_replace_str"));

        Config::set('upload', array_merge(Config::get('upload'), $upload));
        // 配置信息后
        Hook::listen("config_init", $config);

        $this->view->assign('jsconfig', $config);
        $this->view->assign('site', $site);

        parent::_initialize();
    }

    public function index()
    {
        return $this->view->fetch();
    }

    public function cropper()
    {
        return $this->view->fetch();
    }

}