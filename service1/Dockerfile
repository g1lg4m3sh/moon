FROM node:8

WORKDIR /service1

COPY package.json /service1
RUN npm install
COPY . /service1

CMD node service1.js

EXPOSE 8081
