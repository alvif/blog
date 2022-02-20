---
title: "Email Notify when SSH Login"
date: 2022-02-20T11:32:20+07:00
# weight: 1
# aliases: ["/first"]
tags: ["bash", "shell", "email", "automation", "script"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "Automaticaly send email when SSH login."
disableHLJS: true # to disable highlightjs
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
---

### Bash script to send email when SSH login
Goals:
- understand how to make a bash script for automation and system monitoring.
- increase our understanding of bash scripting and python.

Requirements: 
- 2 emails (sender and receiver). Turn on *Allow less secure apps* to **ON**.
- code editor (VSCode, NVIM, VIM, Nano, etc.)
- basic knowledge of **bash** scripting.
- basic knowledge of **python** language.

#### Step 1. Create Bash Script
In this case, I use NVIM as my code editor. Open **Terminal** and type this command:
```bash
touch mailer.sh  && nvim mailer.sh
```
Write the following script, and save.
```bash
#!/bin/bash
ip=`echo $SSH_CONNECTION | cut -d " " -f 1`
inf=$(whoami && date)
python /etc/mailer.py simplewaytofreedom $ip $inf > /dev/null 2>&1
```
---
#### Step 2. Create Python Script
Create ```mailer.py```:
```bash
touch mailer.py  && nvim mailer.py
```

Open ```mailer.py```:
```bash
nvim mailer.py
```

Write this following code:
```python
import smtplib, ssl, sys
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from datetime import datetime

transmiter = "yourmail1@mail.com"
receiver = "yourmail2@mail.com"
passwd = sys.argv[1]

inf1 = sys.argv[2]
inf2 = sys.argv[3]

msg = MIMEMultipart("alternative")
msg["Subject"] = "Information Gathering"
msg["From"] = transmiter
msg["To"] = receiver

current_date = datetime.now()
text = "Login Detected (" + str(current_date) + ")!!!\n\nInformation:\n\n" + "ip addr : "  +inf1 + "\nusername: " + inf2

msg.attach(MIMEText(text, "plain"))

ctx = ssl.create_default_context()
server = smtplib.SMTP_SSL("smtp.gmail.com")
server.login(transmiter, passwd)
server.sendmail(transmiter, receiver, msg.as_string())
server.quit()

```
---
#### Step 3. Add 'execute' Permission
Add permission to ```mailer.sh``` and ```mailer.py```:
```bash
chmod +x mailer.sh
chmod +x mailer.py
```
---
#### Step 4. Place script to directory of your choise
Copy ```mailer.sh``` to ```/etc/profile.d/```:
```bash
sudo cp mailer.sh /etc/profile.d/
```

Copy ```mailer.py``` to ```/etc/```:
```bash
sudo cp mailer.py /etc/
```
---
#### Step 5. Check it works
Reload your session to check it works.
```bash
source /etc/profile
```
