#!/bin/bash

# Merge bugfix branch into master
git checkout master
git merge feature/changes

# Push the merge to remote master
git push
