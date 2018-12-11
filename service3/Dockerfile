FROM node:8

WORKDIR /service3

COPY package.json /service3
RUN npm install
COPY . /service3

CMD node service3.js

EXPOSE 8083
