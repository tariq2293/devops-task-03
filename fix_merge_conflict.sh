#!/bin/bash


git checkout bugfix/changes


sed -i '' 's/5.2/7.2/' build.gradle


git add .
git commit -m "Upgrade logger library version"


git merge master

git add .
git commit -m "Resolve merge conflict in build.gradle"

git push
