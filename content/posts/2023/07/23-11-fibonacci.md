---
title: "フィボナッチ数列を取得する #11"
date: "2023-07-23T00:20:00+09:00"
categories:
  - "Dev"
tags:
  - "Python"
draft: "false"
---

```run.py
def fibonacci(n: int = 10):
    fib_list: list = []
    if n <= 0:
        pass
    elif n == 1:
        fib_list = [1]
    elif n == 2:
        fib_list = [1, 1]
    else:
        fib_list = [1, 1]
        for i in range(2, n):
            fib_list.append(fib_list[i - 1] + fib_list[i - 2])

    return fib_list


if __name__ == '__main__':
    print(fibonacci(0))
    print(fibonacci(1))
    print(fibonacci(2))
    print(fibonacci(3))
    print(fibonacci())
    print(fibonacci(20))
```
