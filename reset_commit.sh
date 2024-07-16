#!/bin/bash

# On bugfix branch
# Make change in index.html
sed -i '' '15s/.*/<li>Bruno - DevOps engineer<\/li>/' src/main/webapp/index.html
git add .
git commit -m "Adjust employee role description"

# Reset the last local commit, meaning move to the previous commit
git reset --hard HEAD~
