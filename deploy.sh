#!/bin/bash

echo -e "\033[0;Deploying updates to Github...\033[0m"

hugo

cd public

git add -A 

msg="rebuilding https://blog.alvifsandana.me/ - `date`"
if [ $# -eq 1 ]
    then msg="$1"
fi

git commit -m "$msg"

git push

cd ..