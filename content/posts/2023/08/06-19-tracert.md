---
title: "60秒ごとにtracertする: サンプルコード #19"
date: "2023-08-06T14:30:00+09:00"
categories:
  - "Dev"
tags:
  - "BAT"
draft: "false"
---

```batch
@echo off
setlocal

set "TARGET=example.com"
set "LOG_FOLDER=logs"
set "DELAY_SECONDS=60"

If not exist "%LOG_FOLDER%" mkdir "%LOG_FOLDER%"

:loop
  set "CURRENT_TIME=%time: =0%"
  set "NOW=%date:/=%%CURRENT_TIME:~0,2%%CURRENT_TIME:~3,2%%CURRENT_TIME:~6,2%"
  tracert "%TARGET%" > "%LOG_FOLDER%\%NOW%.txt"
  timeout /t %DELAY_SECONDS% /nobreak
goto loop
```
