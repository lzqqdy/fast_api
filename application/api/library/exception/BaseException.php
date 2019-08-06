<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/7/10
 * Time: 9:40
 */

namespace app\api\library\exception;

use think\Exception;
use think\Log;

class BaseException extends Exception
{
    public $code = 500;
    public $msg = 'An error occurred';
    public $data = [];

    public $shouldToClient = true;

    /**
     * 构造函数，接收一个带异常参数的数组
     * @param array $params
     */
    public function __construct($params = [])
    {
        if (!is_array($params)) {
            return;
        }
        if (array_key_exists('code', $params)) {
            $this->code = $params['code'];
        }
        if (array_key_exists('msg', $params)) {
            $this->msg = $params['msg'];
        }
        if (array_key_exists('data', $params)) {
            $this->data = $params['data'];
        }
        //将信息写入日志
        Log::record($this->msg . PHP_EOL . var_export($this->data, true), 'info');
        parent::__construct();
    }
}

