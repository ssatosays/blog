---
title: "Pythonでランダム文字列を生成する: サンプルコード #20"
date: "2023-08-06T15:00:00+09:00"
categories:
  - "Dev"
tags:
  - "Python"
draft: "false"
---

```python
import hashlib
import os
import random
import string


def generate_random_string(length, chars):
    return ''.join(random.choice(chars) for _ in range(length))


def func_1():
    data = string.digits + string.ascii_lowercase + string.ascii_uppercase
    return generate_random_string(20, data)


def func_2():
    result = hashlib.sha256(os.urandom(32)).hexdigest()[:20]
    return result


def func_3():
    chars = string.ascii_letters + string.digits + '_'
    return generate_random_string(20, chars)


if __name__ == '__main__':
    print(func_1())
    print(func_2())
    print(func_3())
```
