
echo ".idea" > .gitignore
echo ".DS_Store" >> .gitignore
echo "out" >> .gitignore
echo "build" >> .gitignore

git rm --cached .DS_Store
git rm -r --cached .idea
git rm -r --cached out
git rm -r --cached build

git add .
git commit -m "remove ignored files changed"
git push
