#### Logic逻辑层
* 用于定义项目相关的业务逻辑和数据处理
* Controller控制器用于接收数据，将数据转入Validate验证器，具体代码逻辑则在Logic逻辑层处理后返回控制器再返回前端
* Logic逻辑层Use对应表Model，处理完逻辑直接返回，终止处理或者捕获到异常则Use library\exception中的对应异常方法直接以json格式抛出前端