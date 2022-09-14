FROM node:6.10.3

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY . .

RUN npm ci

EXPOSE 3000

CMD ["node", "dist/main.js"]

