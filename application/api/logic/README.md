#### Logic逻辑层
* 用于定义项目相关的业务逻辑和数据处理
* 处理具体的代码逻辑，返回给控制器
* 实现自动注入同名和其他模型：`$this->model->select();`
* 验证的过程中使用`$this->apiError('msg');`中止代码以json格式将数据返回
* 在生产环境下如果出现代码异常，自动上报，后台管理（上报异常记录）中可查看
> api/logic/Banner.php
```
if ($param) {
    $this->apiError('状态错误!', $data, 0); //在逻辑层使用该方法，中止代码以json格式将数据返回
}
$ret = $this->modelUser->select(); //不同名模型
$ret = $this->model->select(); //同名banner模型
return $ret ?? [];
```