# syntax=docker/dockerfile:1
FROM node:20-alpine

RUN apk update
RUN apk upgrade
USER node
RUN mkdir -p /home/node/data
RUN mkdir -p /home/node/app
COPY files /home/node/app
WORKDIR /home/node/app
RUN unzip foundryvtt.zip
RUN rm foundryvtt.zip

CMD ["node", "/home/node/app/resources/app/main.js", "--headless", "--dataPath=/home/node/data" ]
EXPOSE 30000
