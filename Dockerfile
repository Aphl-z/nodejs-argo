# 基础镜像
FROM node:24-alpine

# 工作目录
WORKDIR /app

# 复制代码
COPY server.js /app/server.js
COPY package*.json /app/

# 安装依赖
RUN npm install --production

# 暴露端口
EXPOSE 3000

# 启动命令
CMD ["node", "server.js"]
