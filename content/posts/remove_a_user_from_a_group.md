---
title: "Remove a User from a Group"
date: 2022-02-20T12:19:45+07:00
# weight: 1
# aliases: ["/first"]
tags: ["linux", "group", "system"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "How to remove a user from a group."
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

### Command for remove a user from a group
Open **Terminal** and write this command:
```bash
gpasswd --delete user group
```
---
### Command for add a user to a group
Open **Terminal** and write this command:
```bash
usermod -aG group user
```
