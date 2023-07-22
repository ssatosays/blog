---
title: "List[Tuple]をfilter/lambda関数で抽出する #6"
date: "2023-07-22T12:00:00+09:00"
categories:
  - "Dev"
tags:
  - "Python"
draft: "false"
---

```run.py
>>> tuple_list = [(1, 2, 3, False), (1, 2, 3, False), (1, 2, 3, False), (1, 2, 3, True)]
>>> r = list(filter(lambda x: x[3], tuple_list))
>>> print(r)
[(1, 2, 3, True)]
```
