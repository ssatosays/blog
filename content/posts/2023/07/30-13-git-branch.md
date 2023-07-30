---
title: "Gitで不要なブランチの削除方法 #13"
date: "2023-07-30T19:00:00+09:00"
categories:
  - "Dev"
tags:
  - "Git"
draft: "false"
---

ローカルリポジトリに残ったリモート追跡ブランチを削除する
```bash
git fetch --prune
```

ローカルブランチを削除する (そのブランチの変更が他のブランチにマージされていない場合は削除を拒否)
```bash
git branch -d <branch-name>
```

ローカルブランチを削除する (強制)
```bash
git branch -D <branch-name>
```
