jekyll build --source . --destination _deploy
touch _deploy/CNAME
echo 'blog.tworitdash.in' > _deploy/CNAME
cd _deploy
 
git add .
git commit -m "Static"

git push -u origin master 
cd ..
git add .
git push origin source
