#!/bin/bash

rm -rf ./.theos
rm -rf ./packages

git add .
read -p "What would you like the commit message to be?" msg
git commit -m $msg
git push