#!/bin/bash
rm -rf ./.theos
rm -rf ./packages
read -p "What would you like the commit message to be?" msg
echo ""
git add .
git commit -m "$msg"
git push