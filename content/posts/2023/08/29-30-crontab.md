---
title: "crontabでExcelファイルを定期削除する: サンプルコード #30"
date: "2023-08-29T12:00:00+09:00"
categories:
  - "Dev"
tags:
  - "CRONTAB"
draft: "false"
---

```setup_crontab.sh
#!/bin/bash

echo "05 0 * * * bash ~/remove_excel_files.sh" > ~/tmp.txt
sudo crontab -u ec2-user ~/tmp.txt
rm -rf ~/tmp.txt
```

```remove_excel_files.sh
#!/bin/bash

one_day_ago=$(date --date '1 day ago' "+%Y%m%d")
today=$(date "+%Y%m%d")
files=$(ls ~/ | grep -e .xls$ -e .xlsx$ | grep -v ${one_day_ago} | grep -v ${today})
if [ ! -z "${files}" ]; then
  rm -rf ${files}
fi
```
