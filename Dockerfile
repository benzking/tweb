#Dockerfile 
FROM node:18 

RUN apt-get update
RUN apt-get install -qyy git build-essential zip

WORKDIR /tweb

RUN git clone https://github.com/morethanwords/tweb.git ./ && \
    npm install

VOLUME /tweb/certs

EXPOSE 8080

CMD ["npm","start"]
