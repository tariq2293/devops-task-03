#!/bin/bash


git checkout -b bugfix/changes


sed -i '' '22s/.*/log.info("Java app started");/' src/main/java/com/Application.java


git diff
git add .
git commit -m "Fix spelling error"


git push --set-upstream origin bugfix/changes
