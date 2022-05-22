---
title: "Linux Command for Filtering Text"
date: 2022-05-22T18:25:17+07:00
# weight: 1
# aliases: ["/first"]
tags: ["linux", "bash", "terminal", "interpreter"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "List of Linux command for filtering text."
# canonicalURL: "https://canonical.url/to/page"
# disableHLJS: true # to disable highlightjs
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

## 1. cat
Concatenate files and print on the standard output. 
```sh
cat filename 
# or use tac
tac filename
```
> Use `man cat` or `man tac` for more details.
## 2. cut
Cemove sections from each line of files.
```sh
# example: select specific field with hyphen (-) as delimiter
cut -d- -f1 filename
```
> Use `man cut` for more details.
## 3. grep
Print lines that match patterns.
```sh
# example: find pattern in command
cat /etc/hosts | grep '.com'
```
> Use `man grep` for more details.
## 4. comm
Compare two sorted files line by line.
```sh
comm filename1 filename2

# just show specific column
comm -23 filename1 filename2 # show first column
comm -13 filename1 filename2 # show second column
comm -12 filename1 filename2 # show third column
```
> Use `man comm` for more details.
