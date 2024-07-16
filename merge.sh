#!/bin/bash

# Merge bugfix branch into master
git checkout master
git merge bugfix/changes

# Push the merge to remote master
git push
