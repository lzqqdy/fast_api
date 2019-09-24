<?php

namespace app\admin\model;

use think\Model;
use traits\model\SoftDelete;

class Abnormal extends Model
{

    use SoftDelete;

    

    // 表名
    protected $name = 'abnormal';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = false;

    // 定义时间戳字段名
    protected $createTime = false;
    protected $updateTime = false;
    protected $deleteTime = 'deletetime';

    // 追加属性
    protected $append = [

    ];
    

    







}
