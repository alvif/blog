---
title: "Python Command Line Arguments"
date: 2022-04-03T08:45:46+07:00
# weight: 1
# aliases: ["/first"]
tags: ["python", "cli", "system"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "How to read command line arguments with Python."
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

### Using `sys`
Example:
```python
import sys

print(sys.argv)
```

When you run `python example.py hello one zero`:
```python
>>> import sys
>>> print(sys.argv)
['example.py', 'hello', 'one', 'zero']
```
