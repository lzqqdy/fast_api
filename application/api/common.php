<?php

use think\exception\HttpResponseException;
use think\Response;

if (!function_exists('dd')) {
    /**
     * 自定义调试变量并且中断输出
     * @param mixed $var 调试变量或者信息
     */
    function dd(...$var)
    {
        dump(...$var);
        throw new HttpResponseException(new Response);
    }
}
