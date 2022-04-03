---
title: "Run Linux Command in Background"
date: 2022-04-03T08:28:58+07:00
# weight: 1
# aliases: ["/first"]
tags: ["linux", "command", "system"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "How to run Linux command / script in background."
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

### Using `&> /dev/null &`
Example:
```ping 8.8.8.8 &> /dev/null &```

To show the running process, we can use `jobs` command.

### Using `nohup` with `&> /dev/null &`
Example:
```nohup ping 8.8.8.8 &> /dev/null &```

To show the running process, we can use `jobs` command.

Terminate the process with `kill -9 pid_num`.