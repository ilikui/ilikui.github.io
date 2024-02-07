---
title: JS相关的问题
date: 2024-02-07 10:49:55
categories:  Web
tags: JavaScript
---

> JS相关的问题汇总

<!-- more -->

* 一看就懂的var、let、const三者区别
    * 只在当前函数下声明的变量有效
    * 在代码块和{ }括号之内有效


> 使用VAR

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
> 使用Let

```js

/**
 * 相关的函数测试
 */

function person(status){

    if(status){
        let value = "蛙人";
    }else{
        console.log(value) //error
    }

    console.log(value);//error
}
person(false);
```

> 函数出错


> const测试

```js
const person={
    name:"蛙人",
    age:23
}

person.age=14;
person = {} //error

console.log(person.age)

```

> 虽然const变量不能修改指针，但是可以修改值，比如我们定义一个对象，我们就可以修改对象里的属性值，但是不可以重写整个对象。
