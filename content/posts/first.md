---
title: "MySQL utility commands"
date: 2021-10-29T21:51:28+07:00
# weight: 1
# aliases: ["/first"]
tags: ["mysql"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "Desc Text."
# canonicalURL: "https://canonical.url/to/page"
disableHLJS: true # to disable highlightjs
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
# cover:
#     image: "<image path/url>" # image path/url
#     alt: "<alt text>" # alt text
#     caption: "<text>" # display caption under cover
#     relative: false # when using page bundles set this to true
#     hidden: true # only hide on current single page
# editPost:
#     URL: "https://github.com/<path_to_repo>/content"
#     Text: "Suggest Changes" # edit text
#     appendFilePath: true # to append file path to Edit link
---
## Table Manipulation
Beberapa command yang digunakan untuk memanipulasi tabel.

### SELECT -- extract data from a database
General form:
```sql
SELECT column_name FROM table_name;
```

Select all column:
```sql
SELECT * FROM table_name;
```
or
```sql
SELECT table_name.* FROM table_name;
```

With condition:
```sql
SELECT column_name FROM table_name
WHERE column_name = value AND ... OR ...;
```
*nb: = can be changed with (operator: =, >, <, !=) 

---

### INSERT -- create new data to a database (add new row to a table)
General form:
```sql
INSERT INTO table_name (column_1, column_2, column_3)
VALUES (value_1, value_2, value_3);
```
---

### UPDATE -- update a row of data from a table
General form:
```sql
UPDATE table_name
SET column_name = value, column_name1 = value, ...
WHERE column_name = another_value;
```
---

### DELETE -- delete rows from a table
General form:
```sql
DELETE table_name
WHERE column_name = value AND ... OR ...;
```
---

### ORDER BY -- sort order
General form:
```sql
SELECT column_name FROM table_name
WHERE condition
ORDER BY column_name [ASC, DESC];
```
---



## Listing tables & table structure
Beberapa command untuk listing tabel dan menampilkan struktur tabel.

### Show table list
```bash
mysql> show tables;
```
output: 
```bash
+----------------+
| Tables_in_test |
+----------------+
| something      |
| something_else |
+----------------+
```
---

### Show table structure
```bash
mysql> desc tablename;
```
output: 
```bash
+--------------+------------------+------+-----+-------------------+----------------+
| Field        | Type             | Null | Key | Default           | Extra          |
+--------------+------------------+------+-----+-------------------+----------------+
| something_id | int(10) unsigned | NO   | PRI | NULL              | auto_increment |
| name         | varchar(50)      | NO   |     | NULL              |                |
| value        | varchar(50)      | NO   |     | NULL              |                |
| ts_updated   | timestamp        | YES  | MUL | CURRENT_TIMESTAMP |                |
+--------------+------------------+------+-----+-------------------+----------------+
4 rows in set (0.00 sec)
```
---

### Show keys from table
```bash
mysql> show keys from tablename;
```
output:
```bash
+-----------+------------+------------+--------------+--------------+-----------+-------------+----------+--------+------+------------+---------+
| Table     | Non_unique | Key_name   | Seq_in_index | Column_name  | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment |
+-----------+------------+------------+--------------+--------------+-----------+-------------+----------+--------+------+------------+---------+
| something |          0 | PRIMARY    |            1 | something_id | A         |           2 |     NULL | NULL   |      | BTREE      | NULL    |
| something |          1 | ts_updated |            1 | ts_updated   | A         |        NULL |     NULL | NULL   |      | BTREE      | NULL    |
+-----------+------------+------------+--------------+--------------+-----------+-------------+----------+--------+------+------------+---------+
2 rows in set (0.00 sec)
```
