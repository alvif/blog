---
title: "Install docker-composer Linux"
date: 2022-01-03T11:58:43+07:00
# weight: 1
# aliases: ["/first"]
tags: ["posts", "docker"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "Steps to install docker-compose on Linux."
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true

---

### Install Compose on Linux systems
> Notes:
> For alpine, the following dependency packages are needed: ```py-pip```, ```python3-dev```, ```libffi-dev```, ```openssl-dev```, ```gcc```, ```libc-dev```, ```rust```, ```cargo``` and ```make```.

1. Run this command to download the current stable release of Docker Compose:
```sh
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

2. Apply executable permissions to the binary:
```sh
sudo chmod +x /usr/local/bin/docker-compose
```

3. Test the installation.
```sh
docker-compose --version
```

[official source here.](https://docs.docker.com/compose/install/)