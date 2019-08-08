<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/7/10
 * Time: 10:21
 */

namespace app\api\validate;

use think\Validate;

class User extends Validate
{
    /**
     * 验证规则
     */
    protected $rule = [
        'username|用户名称' => 'require',
        'code|code'     => 'require',
        'avatar|头像'     => 'require',
    ];
    /**
     * 提示消息
     */
    protected $message = [
    ];
    /**
     * 验证场景
     */
    protected $scene = [
        'login'    => ['code'],
        'register' => ['username', 'code', 'avatar'],
    ];
}