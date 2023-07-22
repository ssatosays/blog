---
title: "GitHub Actions: サンプルコード #3"
date: "2023-07-18T20:00:00+09:00"
categories:
  - "Dev"
tags:
  - "GitHub Actions"
draft: "false"
---

- `.github/workflows`ディレクトリに適切な名前のyml/yamlファイルを配置する
- 以下のサンプルコードではAM06:00(UTC)で定期実行するタスクを定義する

```daily.yml
name: daily
on:
  schedule:
    - cron: '00 06 * * *'
jobs:
  daily:
    name: daily
    runs-on: ubuntu-latest
    steps:
      - name: echo
        run: |
          echo '--- date'
          date
          echo '--- date'
```
