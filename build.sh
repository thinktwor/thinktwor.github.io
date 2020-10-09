jekyll build --source . --destination _deploy
touch _deploy/CNAME
echo 'blog.tworitdash.in' > _deploy/CNAME
cd _deploy

git checkout master

git add .
git commit -m "Static"

git push -u origin master 

cd ..

git checkout branch

git add .
git commit -m "Source Added"
git push origin branch
