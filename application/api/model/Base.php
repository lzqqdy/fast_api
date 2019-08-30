<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/7/17
 * Time: 11:18
 */

namespace app\api\model;

use think\Model;

/**
 * 基类模型
 * Class BaseModel
 * @package app\api\model
 */
class Base extends Model
{
    //时间格式化格式
    const TIME_TYPE = "Y-m-d H:i";

    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    protected $deleteTime = 'deletetime';

    /**
     * 图片地址获取器
     * 读取数据时,图片地址自动拼接域名
     * @param $value
     * @return string
     */
    public function getImageAttr($value)
    {
        return request()->domain() . $value;
    }

    /**
     * 创建时间获取器
     * @param $value
     * @param $data
     * @return false|string
     */
    public function getCreatetimeAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['createtime']) ? $data['createtime'] : '');
        return is_numeric($value) ? date(self::TIME_TYPE, $value) : $value;
    }

    /**
     * 更新时间获取器
     * @param $value
     * @param $data
     * @return false|string
     */
    public function getUpdatetimeAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['updatetime']) ? $data['updatetime'] : '');
        return is_numeric($value) ? date(self::TIME_TYPE, $value) : $value;
    }
}