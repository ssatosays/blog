---
title: "Bashで実行時間を計測: サンプルコード #15"
date: "2023-08-06T12:30:00+09:00"
categories:
  - "Dev"
tags:
  - "Bash"
draft: "false"
---

```bash
#!/bin/bash

BEGIN=$(date +'%s.%3N')
# work
sleep 10
END=$(date +'%s.%3N')

DURING=$(echo "scale=3; ${END} - ${BEGIN}" | bc)
echo "BEGIN: ${BEGIN}"
echo "END: ${END}"
echo "DURING: ${DURING}"
```
