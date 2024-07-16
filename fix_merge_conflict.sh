#!/bin/bash

# Switch to bugfix branch
git checkout bugfix/changes

# Upgrade logger library version in build.gradle
sed -i '' 's/5.2/7.2/' build.gradle

# Commit change locally
git add .
git commit -m "Upgrade logger library version"

# Bring bugfix branch up to date with master
git merge master

# Resolve merge conflict manually if needed
# Assuming conflicts are resolved and build.gradle is in desired state

# Commit the resolved merge
git add .
git commit -m "Resolve merge conflict in build.gradle"

# Push the merge to remote bugfix branch
git push
