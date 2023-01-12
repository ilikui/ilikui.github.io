@echo off

echo %%%%%%%%%%%%%%%%%%%%%%%%%


hexo clean

TIMEOUT /T 30

hexo g

TIMEOUT /T 3
hexo d

TIMEOUT /T 5

