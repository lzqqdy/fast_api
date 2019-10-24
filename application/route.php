<?php

// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
use think\Route;
use think\Request;

//使用自定义请求头例如api-version控制版本
//优势在于从历史版本迭代更新的时候不需要改变URL地址，改变请求头信息即可
$version = Request::instance()->header('api-version') ?: 'v1';

//跟域名转到后台登陆
Route::any('', 'admin/Index/login');

//api路由分组
Route::group('api', function () use ($version) {
    /**
     * Miss路由
     */
    Route::miss($version . '.Miss/miss');
    /**
     * 测试接口
     */
    Route::any('test', $version . '.Index/test');
    /**
     * 异常上报
     */
    Route::any('error', $version . '.Index/errorException');
    /**
     * 注册
     */
    Route::post('register', $version . '.User/register');
    /**
     * 登录
     */
    Route::post('login', $version . '.User/login');
    /**
     * 首页接口
     */
    Route::get('index', $version . '.Index/index');
    /**
     * 统一支付
     */
    Route::post('payment', $version . '.Payment/index');
    /**
     * 统一回调
     */
    Route::post('notify', $version . '.Payment/notify');
});
