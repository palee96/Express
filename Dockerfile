FROM node:16-alpine 

WORKDIR /usr/src/app

COPY package-lock.json ./

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 9876

CMD ["node", "main.js"]

