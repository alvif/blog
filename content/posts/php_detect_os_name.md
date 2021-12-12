---
title: "PHP Detect OS Name"
date: 2021-12-12T01:08:03+07:00
# weight: 1
# aliases: ["/first"]
tags: ["notes", "php"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "How to detect current OS name."
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
The following script check the value of the `PHP_OS` [**constant**](https://www.php.net/manual/en/reserved.constants.php#constant.php-os):
```php
// check whether Windows OS or not
if(strtoupper(substr(PHP_OS, 0, 3)) === 'WIN'){
    // do something...
} else {
    // do something...
}
```

or (**available from PHP 7.2.0**)

```php
// available from PHP 7.2.0
if (PHP_OS_FAMILY === "Windows") {
  echo "Running on Windows";
} elseif (PHP_OS_FAMILY === "Linux") {
  echo "Running on Linux";
}
```
