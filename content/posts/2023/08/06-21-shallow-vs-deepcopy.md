---
title: "Shallow vs Deep Copy #21"
date: "2023-08-06T15:30:00+09:00"
categories:
  - "Dev"
tags:
  - "Python"
draft: "false"
---

```python
import copy

orig_dict = {
    "key1": "value1",
    "key2": "value2",
    "key3": ["value3", "value4", "value5"],
    "key4": {"subkey": "subvalue"}
}

copy_dict = orig_dict
orig_dict["key3"].append("value6")

print("orig_dict:", orig_dict)
print("copy_dict:", copy_dict)
# orig_dict: {'key1': 'value1', 'key2': 'value2', 'key3': ['value3', 'value4', 'value5', 'value6'], 'key4': {'subkey': 'subvalue'}}
# copy_dict: {'key1': 'value1', 'key2': 'value2', 'key3': ['value3', 'value4', 'value5', 'value6'], 'key4': {'subkey': 'subvalue'}}
```

```python
import copy

orig_dict = {
    "key1": "value1",
    "key2": "value2",
    "key3": ["value3", "value4", "value5"],
    "key4": {"subkey": "subvalue"}
}

deep_copy_dict = copy.deepcopy(orig_dict)
orig_dict["key3"].append("value6")

print("orig_dict:", orig_dict)
print("deep_copy_dict:", deep_copy_dict)
# orig_dict: {'key1': 'value1', 'key2': 'value2', 'key3': ['value3', 'value4', 'value5', 'value6'], 'key4': {'subkey': 'subvalue'}}
# deep_copy_dict: {'key1': 'value1', 'key2': 'value2', 'key3': ['value3', 'value4', 'value5'], 'key4': {'subkey': 'subvalue'}}
```
