<?php

namespace app\api\library;

use Exception;
use think\exception\Handle;
use app\common\model\Abnormal;

/**
 * 自定义API模块的错误显示
 */
class ExceptionHandle extends Handle
{

    public function render(Exception $e)
    {
        // 在生产环境下返回code信息
        if (!\think\Config::get('app_debug')) {
            $statuscode = $code = 500;
            $msg = '服务器开小差了~';
            // 验证异常
            if ($e instanceof \think\exception\ValidateException) {
                $code = 0;
                $statuscode = 200;
                $msg = $e->getError();
            }
            // Http异常
            if ($e instanceof \think\exception\HttpException) {
                $statuscode = $code = $e->getStatusCode();
            }
            //异常上报
            $data = [
                'name'    => get_class($e),
                'file'    => $e->getFile(),
                'line'    => $e->getLine(),
                'message' => $this->getMessage($e),
                'trace'   => $e->getTrace(),
                'code'    => $this->getCode($e),
                'source'  => $this->getSourceCode($e),
                'datas'   => $this->getExtendData($e),
                'tables'  => [
                    'GET Data'              => $_GET ?? [],
                    'POST Data'             => $_POST ?? [],
                    'Files'                 => $_FILES,
                    'Cookies'               => $_COOKIE,
                    'Session'               => isset($_SESSION) ? $_SESSION : [],
                    'Server/Request Data'   => $_SERVER,
                    'Environment Variables' => $_ENV,
                ],
            ];

            $data['echo'] = ob_get_clean();

            // 不为空才上传，避免为空的时候上报，在查看的时候又报错
            if (is_array($data) && !empty($data)) {
                $Abnormal = new Abnormal();
                $Abnormal->report($data);
            }

            return json(['code' => $code, 'msg' => $msg, 'time' => time(), 'data' => null], $statuscode);
        }

        //其它此交由系统处理
        return parent::render($e);
    }

}
