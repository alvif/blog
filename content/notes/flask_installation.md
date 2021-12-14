---
title: "Flask - Installation"
date: 2021-12-14T06:13:49+07:00
# weight: 1
# aliases: ["/first"]
tags: ["notes", "flask", "python"]
author: "Me"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "How to install Flask"
# canonicalURL: "https://canonical.url/to/page"
disableHLJS: true # to disable highlightjs
disableShare: false
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

## Flask Installation Methods
System Requirements:
* ```Python v3.x.x```
* MacOS, Windows (including WSL), and Linux are supported
* Virtual Environment
* Text Editor (VS Code, Notepad++, VIM, NeoVIM, Nano, etc.)
---

### Check Python Installation
Check if Python is already installed in our system (write one of the following code):
```sh
# Linux
python3 --version

# Windows
py --version
# or
python --version
```
---

### Check Pip Installation
Check if pip is already installed in our system (write one of the following code):
```sh
pip --version
pip help
```
---

### Install Pip
#### Pip installation steps for Windows:
1. Download (get-pip.py)[https://bootstrap.pypa.io/get-pip.py] file.
2. Open terminal into **get-pip.py** download folder.
3. Run the following command:
```sh
python get-pip.py
```
4. Check the installation by running thi command:
```sh
pip -V
```
Output will be similiar to the following:
```sh
pip 20.3.4 from /usr/lib/python3/dist-packages/pip (python 3.9)
```
#### Pip installation steps for linux:
1. Open terminal, choose one of the following command based on your OS:
```sh
# Debian / Ubuntu
sudo apt install python-pip # python v.2
sudo apt install python3-pip # python v.3

# CentOS / RHEL
sudo yum install epel-release
sudo yum install python-pip

# Fedora
sudo dnf install python-pip # python v.2
sudo dnf install python3-pip # python v.3

# Arch Linux
sudo pacman -S python2-pip # python v.2
sudo pacman -S python-pip  # python v.3

# OpenSUSE
sudo zypper install python-pip	# python v.2
sudo zypper install python3-pip	# python v.3
```
2. Check the installation by running thi command:
```sh
pip -V
```
Output will be similiar to the following:
```sh
pip 20.3.4 from /usr/lib/python3/dist-packages/pip (python 3.9)
```
---

### Install Virtualenv
#### Virtualenv installation steps for Windows:
Open CMD or PowerShell as **ADMINISTRATOR** and run the following command:
```bash
py -m pip install virtualenv
```

#### Virtualenv installation steps for Linux:
Open terminal, choose one of the following command based on your OS:
```bash
# Debian, Ubuntu
sudo apt-get install python-virtualenv

# CentOS / RHEL
sudo yum install python-virtualenv

# Fedora
sudo dnf install python-virtualenv

# Arch Linux
sudo pacman -S python-virtualenv
```
---

### Create new Flask project
#### 1. Create an environment
1. Create a project folder and a venv folder:
```bash
mkdir project_name
cd project_name

# Windows
py -3 -m venv venv

# Linux
python3 -m venv venv
```

2. Activate your project environment:
```bash
# Windows
venv/Scripts/activate

# Linux
. venv/bin/activate
```

#### 2. Install Flask 
```bash
pip install flask
```
#### 3. Create new Flask App
Inside your project folder, create new Python file. For example: **app.py**
Fill it with the following lines:
```python
# import Flask class
from flask import Flask 

# create Flask instance 
app = Flask(__ name __)

# handling route
@app.route('/')
def hello_world():
    return 'Hello, World!'
```

#### 4. Run your Flask App
```bash
export FLASK_APP=app.py
flask run

# or

export FLASK_APP=app.py
python3 -m flask run # linux
py -m flask run # windows
```

Output:

![Run Flask](/images/flask_run.png#center)

Browser preview:

![Flask in browser](/images/flask_run_browser.png#center)
---