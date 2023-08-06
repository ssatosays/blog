---
title: "ストアドプロシージャ: サンプルコード #14"
date: "2023-08-06T12:00:00+09:00"
categories:
  - "Dev"
tags:
  - "MySQL"
draft: "false"
---

## 1-1. 作成

```sql
DELIMITER //

CREATE PROCEDURE SimpleInsert()
BEGIN
  INSERT INTO `students` (`name`, `age`)
  VALUES ('Taro', 10);
END;

DELIMITER ;
```

## 1-2. 実行

```sql
CALL SimpleInsert();
```

## 1-3. 削除

```sql
DROP PROCEDURE SimpleInsert;
```

## 2. ループを利用した一括追加

```sql
DELIMITER //

CREATE PROCEDURE BulkInsert()
BEGIN
  DECLARE i INT DEFAULT 0;
  WHILE i < 10 DO
    INSERT INTO `students` (`name`, `age`)
    VALUES (CONCAT('Student_', i), 10 + i);
    SET i = i + 1;
  END WHILE;
END;

DELIMITER ;
```
