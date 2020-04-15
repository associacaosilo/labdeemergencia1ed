#!/bin/bash

git checkout --orphan gh-pages
git rm --cached -r .

jekyll b
ls -la | grep -v "\(_site\|CNAME\|.git\|publish.sh\)" | xargs rm -rf

cp -r _site/* .
rm -rf _pages/ _site/

git add .
git commit -m "updates site"
git push origin :gh-pages
git push -u origin gh-pages

git rm -rf *
git checkout -f master
git branch -D gh-pages