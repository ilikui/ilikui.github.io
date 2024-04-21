---
title: NPM Hexo Package
date: 2023-06-14 07:34:04
categories:  Web
tags: npm
---

> NPM 

<!--more-->

查看`安装`hexo 后安装的包



```json

{
  "name": "hexo-site",
  "version": "0.0.0",
  "private": true,
  "scripts": {
    "build": "hexo generate",
    "clean": "hexo clean",
    "deploy": "hexo deploy",
    "server": "hexo server"
  },
  "hexo": {
    "version": "6.3.0"
  },
  "dependencies": {
    "hexo": "^6.3.0",
    "hexo-deployer-git": "^3.0.0",
    "hexo-generator-archive": "^2.0.0",
    "hexo-generator-category": "^2.0.0",
    "hexo-generator-feed": "^3.0.0",
    "hexo-generator-index": "^3.0.0",
    "hexo-generator-tag": "^2.0.0",
    "hexo-renderer-ejs": "^2.0.0",
    "hexo-renderer-markdown-it": "^7.1.0",
    "hexo-renderer-stylus": "^2.1.0",
    "hexo-renderer-swig": "^2.0.0",
    "hexo-server": "^3.0.0",
    "hexo-theme-landscape": "^0.0.3",
    "markdown-it-emoji": "^2.0.2"
  }
}

```