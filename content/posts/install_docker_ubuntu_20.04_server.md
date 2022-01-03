---
title: "Install Docker Ubuntu 20.04 Server"
date: 2022-01-03T11:27:35+07:00
# weight: 1
# aliases: ["/first"]
tags: ["posts", "docker", "server", "ubuntu"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "Docker installation step for Ubuntu 20.04 server."
disableHLJS: false # to disable highlightjs
disableShare: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
---

### Uninstall old versions
```sh
sudo apt-get remove docker docker-engine docker.io containerd runc
```
### Install using the repository
1. Update ```apt``` and install the following packets (ca-certificates, curl, gnupg, lsb-release):
```
sudo apt-get update
```
```sh
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
```
2. Add Docker's official GPG key:
```sh
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```
3. Use the following command to set up the ```stable``` repository. To add the ```nightly``` or ```test``` repository, add the word ```nightly``` or ```test``` (or both) after the word ```stable``` in the commands below. 
```sh
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```
4. Install Docker engine
```sh
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
```
5. Verify that Docker Engine is installed correctly by running the ```hello-world``` image.
```sh
sudo docker run hello-world
```

### Manage Docker as a non-root user
1. Create the ```docker``` group.
```sh
sudo groupadd docker
```
2. Add your user to the ```docker``` group.
```sh
sudo usermod -aG docker $USER
```
3. Log out and log back in so that your group membership is re-evaluated.
4. Verify that you can run docker commands without ```sudo```.
```sh
docker run hello-world
```
[Official source here.](https://docs.docker.com/engine/install/ubuntu/)
