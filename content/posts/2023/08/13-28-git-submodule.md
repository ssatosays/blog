---
title: "Gitでサブモジュールを管理する #28"
date: "2023-08-13T12:00:00+09:00"
categories:
  - "Dev"
tags:
  - "Git"
draft: "false"
---

サブモジュールの追加
```
git submodule add <sub-repo-url> <dir>
```

サブモジュールの更新
```
git submodule update --remote --merge
```

サブモジュールを初期化して更新
```
git submodule update --init --recursive
```
