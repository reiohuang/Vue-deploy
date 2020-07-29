#!/usr/bin/env sh

# 當發生錯誤時中止腳本
set -e

# 建立
npm run build

# cd 到建立輸出的目錄下 
cd dist

# 部署到自定義域網域名稱
# echo 'www.example.com' > CNAME

git init
git add .
git commit -m 'deploy'

# 部署到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 部署到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages
# 以這個專案來講就要改成這樣以下這樣
git push -f git@github.com:reiohuang/Vue-deploy.git master:gh-pages

cd -