---
title: "Create VirtualHost Linux XAMPP"
date: 2021-12-12T19:33:43+07:00
# weight: 1
# aliases: ["/first"]
tags: ["xampp", "virtualhost"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "How to create VirtualHost in Linux XAMPP"
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

## System Information
* Debian GNU/Linux 11 (Bullseye)
* XAMPP for Linux 7.4.10-0

## VirtualHost Information
* Hostname **keuanganstikom.local**
* Folder path **/opt/lampp/htdocs/keuangan-stikom/public**

## Create VirtualHost
The following step for creating VirtualHost in Linux XAMPP.


### 1. Edit host file (/etc/hosts)
write the following command to terminal:

```sh
sudo nano /etc/hosts
```

Add hostname based on VirtualHost configuration: 

```hosts
127.0.0.1 keuanganstikom.local
```
---

### 2. Edit httpd.conf Apache configuration file
write the following command to terminal:

```sh
sudo nano /opt/lampp/etc/httpd.conf
```

Find the following line and remove # sign:

```conf
Include etc/extra/httpd-vhosts.conf
```
---

### 3. Edit VirtualHost Configuration file
write the following command to terminal:

```sh
sudo nano /opt/lampp/etc/extra/httpd-vhosts.conf
```

Add the following code to the end of lines:

```xml
<VirtualHost *:80>
    ServerAdmin admin@localhost
    DocumentRoot "/opt/lampp/htdocs"
    ServerName localhost
    ErrorLog "logs/localhost-error_log"
    CustomLog "logs/localhost-access_log" common
</VirtualHost>

<VirtualHost *:80>
    ServerAdmin admin@keuanganstikom.local
    DocumentRoot "/opt/lampp/htdocs/keuangan-stikom/public"
    ServerName keuanganstikom.local
    ErrorLog "logs/keuanganstikom.local-error_log"
    CustomLog "logs/keuanganstikom.local-access_log" common
</VirtualHost>
```

Restart XAMPP server.
