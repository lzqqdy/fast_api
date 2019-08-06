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


//跟域名转到后台登陆
Route::any('', 'admin/Index/index');

//api路由分组
Route::group('api', function () {
    /**
     * Miss路由
     */
    Route::miss('api/Miss/miss');
    /**
     * 测试接口
     */
    Route::any('test', "api/Index/test");
    Route::any('error', "api/Index/errorException");
    Route::any('notice', "api/Index/noticeException");

    /**
     * 首页接口
     */
    Route::get('index', "api/Index/index");
    /**
     * 统一支付
     */
    Route::post('payment', "api/Payment/index");
    /**
     * 统一回调
     */
    Route::post('notify', "api/Payment/notify");
});
