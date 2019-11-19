<?php

namespace app\admin\behavior;

class AdminLog
{
    public function run(&$params)
    {
        if (request()->isPost() || request()->isAjax()) {
            \app\admin\model\AdminLog::record();
        }
    }
}
