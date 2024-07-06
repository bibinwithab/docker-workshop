FROM alpine:latest

RUN apk add --no-cache nodejs npm

WORKDIR /app

COPY package*.json ./

COPY . /app

RUN npm install

CMD ["node", "index.js"]