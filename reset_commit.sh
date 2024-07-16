#!/bin/bash

sed -i '' '15s/.*/<li>Bruno - DevOps engineer<\/li>/' src/main/webapp/index.html
git add .
git commit -m "Adjust employee role description"

git reset --hard HEAD~
