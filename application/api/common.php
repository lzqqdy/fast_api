<?php

use think\exception\HttpResponseException;
use think\Response;

if (!function_exists('throw_response_exception')) {
    /**
     * json格式抛出响应异常
     * @param array $data
     * @param string $type
     */
    function throw_response_exception($data = [], $type = 'json')
    {
        $response = Response::create($data, $type);

        throw new HttpResponseException($response);
    }
}
if (!function_exists('str_prefix')) {
    function str_prefix($str, $prefix)
    {
        return strpos($str, $prefix) === 0 ? true : false;
    }
}
if (!function_exists('str_rep')) {
    /**
     * 字符串替换
     */
    function str_rep($str = '', $target = '', $content = '')
    {

        return str_replace($target, $content, $str);
    }
}