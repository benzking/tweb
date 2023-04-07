#Dockerfile 
FROM node:18 

RUN apk add --no-cache git

WORKDIR /tweb

RUN git clone https://github.com/morethanwords/tweb.git ./ && \
    npm install

VOLUME ./certs

EXPOSE 8080

CMD ["npm","start"]
