#### Controller控制器
* 控制器用于接收数据，进行数据验证，具体代码逻辑引用逻辑层对应方法
* 不建议在控制器层面直接调用模型Model
* 加入api版本控制，具体查看`route.php`文件
* 引入auto_cache函数自动缓存，auto_cache函数中会先进行缓存存在的验证，
如果存在缓存则直接返回数据，若不存在则执行闭包进行数据库查询并缓存
> api/controller/v1/Index.php
```
$param = $this->param; //接收请求过来的参数
//验证$param
$validate = new \app\api\validate\User();
if (!$validate->scene('login')->check($param)) {
    $this->error($validate->getError());
}
//常规调用
$data = $this->logicBanner->getList($param); //使用"逻辑前缀+类名"直接调用逻辑层（logic）里的方法
//自动缓存
$data = auto_cache('index_test', create_closure($this->logicBanner, 'getList', ['id','title']), 60);
$this->success('请求成功', $data); //操作成功返回数据
```