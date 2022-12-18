rm -rfv .git
git init
git add .
git commit -m "init"
git remote add origin https://github.com/Orthemes/orthemes.github.io.git
git branch -m cdn
git checkout --orphan master
for i in `ls | grep -v "README.md"` ; do rm -rf $i; done;
git add .
git commit -m "init"
git push -u --force --all origin
git checkout cdn
