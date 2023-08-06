---
title: "PythonでSMTPメールを送信する #22"
date: "2023-08-06T15:30:00+09:00"
categories:
  - "Dev"
tags:
  - "Python"
draft: "false"
---

```python
import smtplib
from email.mime.text import MIMEText


def main(from_email, to_email, smtp_server, port, password):
    message = "message"
    mime_text = MIMEText(message, "html")
    mime_text["Subject"] = "subject"
    mime_text["From"] = from_email
    mime_text["To"] = to_email

    with smtplib.SMTP(smtp_server, port) as server:
        server.login(from_email, password)
        server.send_message(mime_text)


if __name__ == "__main__":
    from_email, to_email = "", ""
    smtp_server, port, password = "", 587, ""
    main(from_email, to_email, smtp_server, port, password)
```
