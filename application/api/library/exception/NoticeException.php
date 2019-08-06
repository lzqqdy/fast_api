<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/7/29
 * Time: 10:42
 */

namespace app\api\library\exception;

/**
 * 提示类型的抛出
 * Class NoticeException
 * @package app\api\library
 */
class NoticeException extends BaseException
{
    public $code = 0;
    public $msg = 'Invalid parameters';
}