---
title: "Bashで引数のハンドルと終了ステータスの取得: サンプルコード #16"
date: "2023-08-06T13:00:00+09:00"
categories:
  - "Dev"
tags:
  - "Bash"
draft: "false"
---

```bash
#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo 'Error: The script expects exactly 3 arguments.'
    exit 1
fi

echo 'The number of args is 3.'

echo $1
echo $2
echo $3

echo 'Hello, world.'
if [ "$?" -eq 0 ]; then
  echo 'Command succeed.'
else
  echo 'Command failed.'
fi
```
