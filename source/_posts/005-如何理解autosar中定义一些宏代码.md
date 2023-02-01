---
title: 005-如何理解autosar中定义一些宏代码
date: 2023-02-01 09:48:24
categories:  Autosar
tags: Code
---


> 如何理解autosar中定义一些宏代码

<!--more-->

```c
#include <stdio.h>
/*https://blog.csdn.net/lsllll44/article/details/111711344*/

/* AUTOMATIC 用来声明本地指针 */
# define AUTOMATIC

/* TYPEDEF 应该用来声明类型定义*/
# define TYPEDEF

/* STATIC 编译器的关键字 */
#  define STATIC       static
/*
  rettype : 返回的类型
  ptrtype ：指针的类型
  type    ：类型
  vartype ：变量的类型
  
  memclass: 所属的类别
  ptrclass：指针的类别
*/
/* 函数返回变量类型 */
# define FUNC(rettype, memclass) memclass rettype
/* 函数返回指向const的指针类型 */
# define FUNC_P2CONST(rettype, ptrclass, memclass) const rettype ptrclass * memclass 

/* 函数返回指针类型 */
# define FUNC_P2VAR(rettype, ptrclass, memclass)  rettype ptrclass * memclass 

/* 指针的类型 */
# define P2VAR(ptrtype, memclass, ptrclass) ptrtype ptrclass * memclass

/* 指向const的指针的类型 */
# define P2CONST(ptrtype, memclass, ptrclass) const ptrtype ptrclass * memclass

/* const指针的类型 */
# define CONSTP2VAR(ptrtype, memclass, ptrclass) ptrtype ptrclass * const memclass 

/* 指向const的const指针的类型 */
# define CONSTP2CONST(ptrtype, memclass, ptrclass) const ptrtype ptrclass * const memclass

/* 指向函数的指针的类型 */
# define P2FUNC(rettype, ptrclass, fctname) rettype ( * ptrclass fctname)

/* const变量类型 */
# define CONST(type, memclass) memclass const type 
/* 变量类型 */
# define VAR(vartype, memclass) memclass vartype

#define myCode_1
#define MAIN_C
FUNC(void,myCode_1) myCode_PrintFun( CONSTP2CONST(char,myCode_1,MAIN_C) );

int main(void)
{
    myCode_PrintFun("abcdef");
    return 0;
}

FUNC(void,myCode_1) myCode_PrintFun( CONSTP2CONST(char,myCode_1,MAIN_C) iString) {
    printf("%s\n",iString);
}
```




> 参考信息


- [1] [automotive](https://www.automotive.wiki/index.php/Compiler_Abstraction)
- [2] [stackoverflow](https://stackoverflow.com/questions/60181263/macro-for-pointer-explanation-of-this-line)