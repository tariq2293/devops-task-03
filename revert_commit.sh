#!/bin/bash

sed -i '' '11s/.*/<li>Sarah - Full stack developer<\/li>/' src/main/webapp/index.html
git add .
git commit -m "Fix spelling error"

sed -i '' '9s|.*|<img src="https://www.tameday.com/wp-content/uploads/2018/10/effective-meetings.jpg" width="" />|' src/main/webapp/index.html
git add .
git commit -m "Set image URL"

git push

git revert HEAD
git push
