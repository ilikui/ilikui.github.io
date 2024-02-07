---
title: JS相关的问题
date: 2024-02-07 10:49:55
categories:  Web
tags: JavaScript
---

> JS相关的问题汇总

<!-- more -->

* 一看就懂的var、let、const三者区别

```js
/**
 * 相关的函数使用
 */
function person(status){

    if(status){
        var value = "娃人";
    }else{
        console.log(value); //undefined
    }
    console.log(value);//undefined
}
person(false)
```