<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/9/17
 * Time: 9:00
 */

namespace app\api\logic;


/**
 * Class Base
 * @package app\api\logic
 */
class Base
{
    use Error;

    public function __construct()
    {
        //TODO
    }

    /**
     * 逻辑层获取模型实例
     * @param $name
     * @return \app\api\model\$calledLogic|\app\api\model\str_rep($name, LAYER_MODEL_NAME)|\think\Model
     * @throws \Exception
     */
    public function __get($name)
    {
        !str_prefix($name, LAYER_MODEL_NAME) && exception('模型层引用需加前缀:' . LAYER_MODEL_NAME);
        if (empty(str_rep($name, LAYER_MODEL_NAME))) {
            $called = get_called_class();
            $calledLogic = substr($called, strrpos($called, '\\') + 1);

            return model($calledLogic, LAYER_MODEL_NAME);
        } else {
            return model(str_rep($name, LAYER_MODEL_NAME), LAYER_MODEL_NAME);
        }
    }
}