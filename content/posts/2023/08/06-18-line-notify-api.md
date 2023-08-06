---
title: "LINE Notify API: サンプルコード #18"
date: "2023-08-06T14:00:00+09:00"
categories:
  - "Dev"
tags:
  - "Bash"
  - "Python"
draft: "false"
---

```bash
#!/bin/bash

# Configuration
readonly TOKEN="mytoken"
readonly MESSAGE="Hello, LINE Notify!"
readonly EP="https://notify-api.line.me/api/notify"
readonly AUTH="Authorization: Bearer ${TOKEN}"
readonly CONTENT_TYPE="Content-Type: application/x-www-form-urlencoded"
readonly DATA="message=${MESSAGE}"

# API request
curl -X POST -H "${AUTH}" -H "${CONTENT_TYPE}" -d "${DATA}" ${EP}
```

```python
import requests

# Configuration
token = 'mytoken'
message = 'Hello, LINE Notify!'
ep = 'https://notify-api.line.me/api/notify'
headers = {
    'Authorization': f'Bearer {token}',
    'Content-Type': 'application/x-www-form-urlencoded'
}
payload = {'message': message}

# API request
r = requests.post(ep, headers=headers, data=payload)

# Response
print(r.status_code, r.text)
```
