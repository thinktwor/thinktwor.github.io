jekyll build --source . --destination _deploy
touch _deploy/CNAME
echo 'blog.tworitdash.in' > _deploy/CNAME
cd _deploy
git init 
git add .
git commit -m "Static"
git remote add origin https://github.com/thinktwor/thinktwor.github.io.git
git push -u origin master 
cd ..
git add .
git push -u origin source
