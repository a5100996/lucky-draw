# 使用 Node v12.11.0 作为基础镜像
FROM node:12.11.0

# 设置工作目录
WORKDIR /app

# 将 package.json 和 package-lock.json 复制到工作目录
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 将项目文件复制到工作目录
COPY . .

# 构建应用
RUN npm run build

RUN npm run serve
# 指定运行时容器监听的端口号

EXPOSE 80



