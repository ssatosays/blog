---
title: "OpenPyXL: サンプルコード #4"
date: "2023-07-21T20:00:00+09:00"
categories:
  - "Dev"
draft: "false"
---

```run.py
from openpyxl import load_workbook

filename = 'target.xlsx'
workbook = load_workbook(filename)

worksheet = workbook['Sheet1']

worksheet['A1'] = 'a'
worksheet['B1'] = 'b'
worksheet['C1'] = 'c'

workbook.save(filename)
```
