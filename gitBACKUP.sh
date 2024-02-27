#! /bin/bash

#prompt for commit message
echo "enter commit message"
read COMMIT_COMMENT

# add, commit and push
git add . && git commit -m ""${COMMIT_COMMENT}"" && git push origin main

