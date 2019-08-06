<?php

namespace app\api\library\exception;

use Exception;
use think\exception\Handle;

/**
 * 自定义API模块的错误显示
 */
class ExceptionHandle extends Handle
{
    public function render(Exception $e)
    {
        if ($e instanceof BaseException) {
            // 基于BaseException的项目自定义异常
            $result = [
                'code' => $e->code,
                'msg'  => $e->msg,
                'time' => time(),
                'data' => null,
            ];
            return json($result, $e->code);
        } else {
            // 在生产环境下返回code信息
            if (!\think\Config::get('app_debug')) {
                $statusCode = $code = 500;
                $msg = 'An error occurred';
                // 验证异常
                if ($e instanceof \think\exception\ValidateException) {
                    $code = 0;
                    $statusCode = 200;
                    $msg = $e->getError();
                }
                // Http异常
                if ($e instanceof \think\exception\HttpException) {
                    $statusCode = $code = $e->getStatusCode();
                }
                return json(['code' => $code, 'msg' => $msg, 'time' => time(), 'data' => null], $statusCode);
            }
            //其它此交由系统处理
            return parent::render($e);
        }
    }

}
