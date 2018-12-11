FROM node:8

WORKDIR /redbird-proxy

COPY package.json //redbird-proxy
RUN npm install
COPY . //redbird-proxy

CMD node /redbird-proxy

EXPOSE 80
