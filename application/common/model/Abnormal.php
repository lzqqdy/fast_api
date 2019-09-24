<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/9/24
 * Time: 9:52
 */

namespace app\common\model;

use think\Model;

class Abnormal extends Model
{
    // 表名
    protected $name = 'abnormal';

    /**
     * 上报异常
     * @param array $send
     * @return false|int
     */
    public function report(Array $send)
    {
        $data['ab_class'] = $send['name'] ?? "UNKNOWN";
        $data['ab_date'] = date("Y-m-d H:i:s");
        $data['ab_data'] = json_encode($send, 256) ?? json_last_error_msg() ?? '{}';
        return $this->save($data);
    }
}