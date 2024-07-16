#!/bin/bash

# Create bugfix branch
git checkout -b bugfix/changes

# Fix spelling error in Application.java
sed -i '' '22s/.*/log.info("Java app started");/' src/main/java/com/Application.java

# Check and commit changes
git diff
git add .
git commit -m "Fix spelling error"

# Push your changes to remote
git push --set-upstream origin bugfix/changes
