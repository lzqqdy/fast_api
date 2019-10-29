<?php
/**
 * Created by PhpStorm.
 * User: lzqqdy
 * Date: 2019/7/17
 * Time: 11:18
 */

namespace app\api\model;

use think\Model;
use traits\model\SoftDelete;

/**
 * 基类模型
 * Class BaseModel
 * @package app\api\model
 */
class Base extends Model
{
    use SoftDelete;

    //时间格式化格式
    const TIME_TYPE = "Y-m-d H:i";

    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    //数据完成
    //status字段为所以表共用字段，用于数据展示和隐藏
    //表相关的具体状态字段命名规则为"table_status"
    protected $insert = ['status' => 1];

    //类型转换
    protected $type = [
        'status' => 'integer',
    ];

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    protected $deleteTime = 'deletetime';

    //数据集
    protected $resultSetType = 'collection';

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
     * 图集地址获取器&&格式转换
     * 读取数据时,图片地址自动拼接域名
     * @param $value
     * @return string
     */
    public function getImagesAttr($value)
    {
        $value = explode(',', $value);
        if (!empty($value)) {
            foreach ($value as &$v) {
                $v = request()->domain() . $v;
            }
        }
        return $value;
    }

    /**
     * 富文本图片地址获取器
     * @param $value
     * @return string
     */
    public function getContentAttr($value)
    {
        return replace_pic_url($value, request()->domain());
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