FROM node:8

WORKDIR /service2

COPY package.json /service2
RUN npm install
COPY . /service2

CMD node service2.js

EXPOSE 8082
