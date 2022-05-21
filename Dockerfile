FROM node
# 镜像名称
LABEL name="git-hub-action-server"
# 版本
LABEL version="1.0"
# 当前项目 copy 到容器 /app 路径中
COPY . /app
# 控制台打开工作目录 问 /app
WORKDIR /app
# 安装依赖
RUN npm install
# 3000 端口映射到宿主机
EXPOSE 3000
# 启动项目
CMD npm start
