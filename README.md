基于FastAdmin的小程序api后台开发（自用）。


## **主要特性**

> 后台安装了部分FastAdmin常用插件，删除FastAdmin框架部分多余的东西

> api模块进行了路由配置 异常上报 miss路由 微信统一支付 小程序登录注册等整合

> api模块控制器 模型 验证器 逻辑层 服务分层

> 通过header头和路由文件进行api版本控制

> 定义常用常量，实现控制器对逻辑层的依赖注入，逻辑层以json格式抛出信息

> 引入dd()调试方法，数据库编码更新为utf8mb4，简化数据库

> 后台加入免费的百度编辑器，配置常用基础配置等


## **安装使用**
1.克隆项目到你本地
>`git clone https://github.com/lzqqdy/fast_api.git`

2.进入目录
>`cd fast_api`

3.下载前端插件依赖包
>`bower install` (先安装node环境，再安装bower`npm install -g bower`)

4.下载PHP依赖包
>`composer install`

5.添加虚拟主机并绑定到`fast_api/public`目录

>`访问站点域名进行安装`

## **在线演示**

## **特别鸣谢**

感谢以下的项目,排名不分先后

FastAdmin： https://www.fastadmin.net

ThinkPHP：http://www.thinkphp.cn

AdminLTE：https://adminlte.io

Bootstrap：http://getbootstrap.com

jQuery：http://jquery.com

Bootstrap-table：https://github.com/wenzhixin/bootstrap-table

Nice-validator: https://validator.niceue.com

SelectPage: https://github.com/TerryZ/SelectPage


## **版权信息**

FastAdmin遵循Apache2开源协议发布，并提供免费使用。

本项目包含的第三方源码和二进制文件之版权信息另行标注。

版权所有Copyright © 2017-2019 by FastAdmin (https://www.fastadmin.net)

All rights reserved。