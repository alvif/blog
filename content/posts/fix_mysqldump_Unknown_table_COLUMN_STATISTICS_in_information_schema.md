---
title: "Fix mysqldump: Unknown table 'COLUMN_STATISTICS' in information_schema"
date: 2022-06-21T11:26:10+07:00
# weight: 1
# aliases: ["/first"]
tags: ["mysql", "mysqldump", "db"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "Fix column statistics error while dumping database."
# canonicalURL: "https://canonical.url/to/page"
disableHLJS: true # to disable highlightjs
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true

---
Disable column statistics by set the `--column-statistics` to zero. 
```sh
mysqldump --column-statistics=0 --host=<hostname> --user=<username> --password=<secret> db_name > backup_db_name.sql
```
