---
title: "redis-py: Basic Example #5"
date: "2023-07-21T21:00:00+09:00"
categories:
  - "Dev"
tags:
  - "Python"
draft: "false"
---

```basic-example.py
>>> import redis
>>> r = redis.Redis(host='localhost', port=6379, db=0)
>>> r.set('mykey', 'myvalue')
True
>>> value = r.get('mykey')
>>> print(value.decode())
myvalue
>>>
>>> if r.exists('mykey'):
...     r.delete('mykey')
...     r.exists('mykey')
...
1
0
>>> value = r.get('mykey')
>>> print(value)
None
>>>
>>> r.incr('mycounter')
1
>>> r.incr('mycounter')
2
>>> value = r.get('mycounter')
>>> print(value.decode())
2
>>> r.expire('mycounter', 60)
True
>>> r.ttl('mycounter')
54
>>> r.ttl('mycounter')
51
>>>
```
