---
title: "数値のリストから連続した範囲を抽出する #9"
date: "2023-07-23T00:00:00+09:00"
categories:
  - "Dev"
tags:
  - "Python"
draft: "false"
---

```ranges.py
def ranges(numbers):
    if not numbers:
        return []

    result = []
    start = numbers[0]
    
    for i, num in enumerate(numbers[1:], 1):
        if num - numbers[i-1] != 1:
            result.append(str(start) if start == numbers[i-1] else f"{start}~{numbers[i-1]}")
            start = num

    result.append(str(start) if start == numbers[-1] else f"{start}~{numbers[-1]}")
    return result

numbers = [1, 2, 3, 4, 5, 8, 9, 10, 12, 13]
print(ranges(numbers))  # ['1~5', '8~10', '12~13']
```
