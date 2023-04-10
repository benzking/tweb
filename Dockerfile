#Dockerfile 
FROM node:18 

RUN apt-get update
RUN apt-get install -qyy git build-essential zip

WORKDIR /tweb

RUN git clone https://github.com/morethanwords/tweb.git ./ && \
    npm install && \
    npm install -g http-server && \
    npm run build

VOLUME /tweb/certs

EXPOSE 8080

CMD [ "http-server", "dist" ]
