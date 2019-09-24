#### Controller控制器
* 控制器用于接收数据，进行数据验证，具体代码逻辑引用逻辑层对应方法
* 不建议在控制器层面直接调用模型Model
> api/controller/Index.php
```
$param = $this->param; //接收请求过来的参数
//验证$param
$validate = new \app\api\validate\User();
if (!$validate->scene('login')->check($param)) {
    $this->error($validate->getError());
}
$data = $this->logicBanner->getList($param); //使用"逻辑前缀+类名"直接调用逻辑层（logic）里的方法
$this->success('请求成功', $data); //操作成功返回数据
```