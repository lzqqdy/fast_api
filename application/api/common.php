<?php

use think\exception\HttpResponseException;
use think\Response;

if (!function_exists('throw_response_exception')) {
    /**
     * json格式抛出响应异常
     * @param array $data
     * @param string $type
     */
    function throw_response_exception($data = [], $type = 'json')
    {
        $response = Response::create($data, $type);

        throw new HttpResponseException($response);
    }
}
if (!function_exists('str_prefix')) {
    /**
     * str_prefix
     * @param $str
     * @param $prefix
     * @return bool
     */
    function str_prefix($str, $prefix)
    {
        return strpos($str, $prefix) === 0 ? true : false;
    }
}
if (!function_exists('str_rep')) {
    /**
     * 字符串替换
     */
    function str_rep($str = '', $target = '', $content = '')
    {

        return str_replace($target, $content, $str);
    }
}
if (!function_exists('create_closure')) {
    /**
     * 通过类创建逻辑闭包
     * @param null $object
     * @param string $method_name
     * @param array $parameter
     * @return Closure
     */
    function create_closure($object = null, $method_name = '', $parameter = [])
    {
        $func = function () use ($object, $method_name, $parameter) {
            return call_user_func_array([$object, $method_name], $parameter);
        };
        return $func;
    }
}
if (!function_exists('auto_cache')) {
    /**
     * 通过闭包控制缓存
     * @param string $key
     * @param string $func
     * @param int $time
     * @return mixed
     */
    function auto_cache($key = '', $func = '', $time = 3)
    {
        $result = cache($key);
        if (empty($result)) {
            $result = $func();
            !empty($result) && cache($key, $result, $time);
        }
        return $result;
    }
}
if (!function_exists('replace_pic_url')) {
    /**
     * 替换富文本中的图片 添加域名
     * @param  string $content 要替换的内容
     * @param  string $strUrl 内容中图片要加的域名
     * @return string
     * @eg
     */
    function replace_pic_url(&$content = null, $strUrl = null)
    {
        if ($strUrl) {
            //提取图片路径的src的正则表达式 并把结果存入$matches中
            preg_match_all("/<[img|IMG].*?src=[\'|\"](.*?(?:[\.jpg|\.jpeg|\.png|\.gif|\.bmp]))[\'|\"].*?[\/]?>/",
                $content,
                $matches);
            if (!empty($matches)) {
                //注意，上面的正则表达式说明src的值是放在数组的第二个中
                $img = $matches[1];
            } else {
                $img = "";
            }
            if (!empty($img)) {
                $patterns = array();
                $replacements = array();
                foreach ($img as $imgItem) {
                    if (!filter_var($imgItem, FILTER_VALIDATE_URL, FILTER_FLAG_PATH_REQUIRED)) {
                        $final_imgUrl = $strUrl . $imgItem;
                    } else {
                        $final_imgUrl = $imgItem;
                    }
                    $replacements[] = $final_imgUrl;
                    $img_new = "/" . preg_replace("/\//i", "\/", $imgItem) . "/";
                    $patterns[] = $img_new;
                }
                //让数组按照key来排序
                ksort($patterns);
                ksort($replacements);
                //去重
                //替换内容
                $vote_content = preg_replace(array_unique($patterns), array_unique($replacements), $content);
                return $vote_content;
            } else {
                return $content;
            }
        } else {
            return $content;
        }
    }
}