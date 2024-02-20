---
title: 去掉windows桌面快捷
date: 2024-02-20 18:08:58
categories:  Windows
tags: Bat
---

> 使用批处理去掉桌面软件快捷方式

<!-- more -->


```batch
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /d "%systemroot%\system32\imageres.dll,197" /t reg_sz /f
taskkill /f /im explorer.exe
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db"
del "%userprofile%\AppData\Local\iconcache.db" /f /q
start explorer
pause
```