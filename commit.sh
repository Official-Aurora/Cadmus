#!/bin/bash
NAME="$( git config user.name )" #get the users name
#MESSAGE="" #the commit message in the future
echo ""

rm -rf ./.theos
rm -rf ./packages
git add . # select all changed files and prepare them for commit

echo "Please put your commit message below"
read -p ">>> " MESSAGE
NEWMESSAGE="$(echo $MESSAGE -$NAME)"
git commit -m "$NEWMESSAGE"
git push