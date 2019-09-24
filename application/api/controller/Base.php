<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/8/27
 * Time: 11:52
 */

namespace app\api\controller;


use app\common\controller\Api;

/**
 * 业务逻辑控制器基类
 * Class Base
 * @package app\api\controller
 */
class Base extends Api
{
    //请求参数
    protected $param;

    //TODO
    public function __construct()
    {
        parent::__construct();
        $this->init();
    }

    /**
     * 初始化部分常量
     */
    public function init()
    {
        //初始化逻辑层名称常量
        define('LAYER_LOGIC_NAME'       , 'logic');
        define('LAYER_MODEL_NAME'       , 'model');
        define('LAYER_SERVICE_NAME'     , 'service');
        define('LAYER_CONTROLLER_NAME'  , 'controller');
        define('LAYER_VALIDATE_NAME'    , 'validate');
        define('LAYER_VIEW_NAME'        , 'view');

        //初始化请求信息
        defined('IS_POST') or define('IS_POST', $this->request->isPost());
        defined('IS_GET') or define('IS_GET', $this->request->isGet());
        defined('IS_AJAX') or define('IS_AJAX', $this->request->isAjax());
        defined('IS_PJAX') or define('IS_PJAX', $this->request->isPjax());
        defined('IS_MOBILE') or define('IS_MOBILE', $this->request->isMobile());
        defined('MODULE_NAME') or define('MODULE_NAME', strtolower($this->request->module()));
        defined('CONTROLLER_NAME') or define('CONTROLLER_NAME', strtolower($this->request->controller()));
        defined('ACTION_NAME') or define('ACTION_NAME', strtolower($this->request->action()));
        defined('URL') or define('URL', CONTROLLER_NAME . DS . ACTION_NAME);
        defined('URL_TRUE') or define('URL_TRUE', $this->request->url(true));
        defined('DOMAIN') or define('DOMAIN', $this->request->domain());
        defined('URL_ROOT') or define('URL_ROOT', $this->request->root());

        //参数
        $this->param = $this->request->param();
    }

    /**
     * 获取逻辑层实例
     * @param $name
     * @return \app\api\model\str_rep($name, LAYER_LOGIC_NAME)|\think\Model
     * @throws \Exception
     */
    public function __get($name)
    {

        !str_prefix($name, LAYER_LOGIC_NAME) && exception('逻辑层引用需加前缀:' . LAYER_LOGIC_NAME);

        return model(str_rep($name, LAYER_LOGIC_NAME), LAYER_LOGIC_NAME);
    }
}