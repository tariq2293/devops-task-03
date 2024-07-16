# create .gitignore file with following entries
echo ".idea" > .gitignore
echo ".DS_Store" >> .gitignore
echo "out" >> .gitignore
echo "build" >> .gitignore

# remove cached commited files and commit .gitignore file
git rm --cached .DS_Store
git rm -r --cached .idea
git rm -r --cached out
git rm -r --cached build

# commit & push the changes
git add .
git commit -m "remove ignored files changed"
git push
