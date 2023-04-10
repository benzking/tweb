#Dockerfile 
# build stage
FROM node:18 

RUN apt-get update
RUN apt-get install -qyy git build-essential zip

WORKDIR /tweb

RUN git clone https://github.com/morethanwords/tweb.git ./ && \
    npm install 
RUN npm install -g http-server 
# 使用npm run build命令打包web项目
RUN npm run build

VOLUME /tweb/certs

EXPOSE 8080

CMD [ "http-server", "public" ]
