---
title: "mysqldump with PHP"
date: 2021-12-12T01:18:17+07:00
# weight: 1
# aliases: ["/first"]
tags: ["notes", "mysql", "php"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "How to run mysqldump with PHP"
disableHLJS: true # to disable highlightjs
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
---

```php
<?php 
    // Windows XAMPP
    exec("C:/xampp/mysql/bin/mysqldump -u root db_name> db_name.sql");
?>
```

or (MySQL with password protected, use `-p` flag):

```php
<?php 
    // Windows XAMPP
    exec("C:/xampp/mysql/bin/mysqldump -u root -pMyPassword db_name> db_name.sql");
?>
```

on Linux:
```php
<?php 
    exec("mysqldump -u root db_name> db_name.sql");
?>
```

or (MySQL with password protected, use `-p` flag):

```php
<?php 
    exec("mysqldump -u root -pMyPassword db_name> db_name.sql");
?>
```