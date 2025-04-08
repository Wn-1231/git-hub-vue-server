#!/bin/bash
WORK_PATH='/root/git-hub-vue-server'
cd $WORK_PATH
echo "清理代码"
git reset --hard origin/master
git clean -f
echo "拉取最新代码"
git pull origin master
echo "开始node服务器的镜像"
docker build -t git-hub-server .
echo "删除旧容器"
docker stop git-hub-server-container
docker rm git-hub-server-container
echo "通过镜像启动新容器"
docker container run -p 3000:3000 -d --name git-hub-server-container git-hub-server