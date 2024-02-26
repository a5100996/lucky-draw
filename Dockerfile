# 使用 Node v12.11.0 作为基础镜像
FROM node:12.11.0

# 设置工作目录
WORKDIR /app

# 将 package.json 和 package-lock.json 复制到工作目录
COPY package*.json ./

RUN yarn upgrade

# 安装项目依赖
RUN npm install

# 将项目文件复制到工作目录
COPY . .

# 构建应用
RUN npm run build

# 指定运行时容器监听的端口号
EXPOSE 80

# 设置环境变量，用于在容器中运行 Vue CLI 服务
ENV NODE_ENV=production

# 运行npm serve命令，将8080端口映射到容器的80端口
CMD [ "npm", "run", "serve", "--", "--port", "80" ]