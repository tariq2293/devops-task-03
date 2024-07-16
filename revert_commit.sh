#!/bin/bash

# On bugfix branch
# Fix spelling error in index.html
sed -i '' '11s/.*/<li>Sarah - Full stack developer<\/li>/' src/main/webapp/index.html
git add .
git commit -m "Fix spelling error"

# Set image URL in index.html
sed -i '' '9s|.*|<img src="https://www.tameday.com/wp-content/uploads/2018/10/effective-meetings.jpg" width="" />|' src/main/webapp/index.html
git add .
git commit -m "Set image URL"

# Push both commits to remote
git push

# Revert last commit (set image URL)
git revert HEAD
git push
