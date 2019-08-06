<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/7/29
 * Time: 10:44
 */

namespace app\api\library\exception;

/**
 * try catch捕获的错误级别异常
 * Class ErrorException
 * @package app\api\library
 */
class ErrorException extends BaseException
{
    public $code = 500;
    public $msg = '服务器开小差了!';
}