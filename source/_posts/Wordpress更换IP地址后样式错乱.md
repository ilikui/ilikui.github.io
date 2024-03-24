---
title: Wordpress更换IP地址后样式错乱
date: 2023-01-28 09:47:56
categories:  Website
tags:
---

> 详情参考

* [Wordpress更换IP地址后样式错乱](https://blog.csdn.net/qq_16881981/article/details/105012053)
* [WordPress忘记密码的5种解决方法](http://www.ttlsa.com/news/how-to-reset-wordpress-password/)

<!--more-->

* 控制台的登录 mysql数据

```mysql
mysql -u root -p //然后输入密码
use wordpressdb; //选中你自己网站对应的数据库。
show tables;//显示该数据库所有表格。
select * from wp_options where 1=1 limit 10;//查看数据库前10条记录
update wp_options set option_value='http://服务器ip(或域名)/wordpress' where option_name='siteurl';
//（如果home也改了就也改回来）
update wp_options set option_value='http://服务器ip(或域名)/wordpress' where option_name='home';
其实就是改变了wordpress url ，则wp_options表中的siteurl的值变化了，只要把它在修改过来就行。
```


操作如下

![](https://github.com/ilikui/ilikui.github.io/blob/master/images/20230128/Capture.JPG?raw=true)
