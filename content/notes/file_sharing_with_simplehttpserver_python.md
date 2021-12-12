---
title: "File Sharing with SimpleHTTPServer Python"
date: 2021-12-12T00:42:43+07:00
# weight: 1
# aliases: ["/first"]
tags: ["notes", "python", "share", "server"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "How to share file with http.server Python."
disableHLJS: true # to disable highlightjs
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
---

### File Sharing with http.server Python
Open your terminal, change to the directory that will be shared. For example, we want to share our Music folder:
```sh
cd $HOME/Music
```

Write this command to run the server:
```sh
python3 -m http.server
```

If we want the server run on specific port, run the following command instead (custom port, for example 2408):
```sh
python3 -m http.server 2408
```

We will see following output when server successfully launched:
```sh
Serving HTTP on 0.0.0.0 port 2408 (http://0.0.0.0:2408/) ...
```

We can access it in browser with URL mentioned OR if we want to access from **different device**, check
our computer's IP address that run this server with this command (Linux):
```sh
hostname -I
```
or (Windows OS)
```sh
ipconfig
```

then access the server with **http://your_ip_addr:2408/** (for example: **http://192.168.0.123:2408/**).