#!/usr/local/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# 获取主题的最新代码
# cd themes/jane
# git pull
# cd -

# Build the project.
# if using a theme, replace with `hugo -t <YOURTHEME>`
hugo

cd public
git add .
msg="rebuilding site `date '+%F %T'`"
[ $# -eq 1 ] && msg="$1"
git commit -m "$msg"
git push
