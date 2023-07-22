---
title: ".htaccess: サンプルコード #10"
date: "2023-07-23T00:10:00+09:00"
categories:
  - "Dev"
tags:
  - "Setting file"
draft: "false"
---

```.htaccess
RewriteEngine On
RewriteBase /

RewriteCond %{SERVER_PORT} 80
RewriteRule ^(.*)$ http://example.com/$1 [R=301,L]

RewriteCond %{SERVER_PORT} 443
RewriteRule ^(.*)$ https://example.com/$1 [R=301,L]
```
