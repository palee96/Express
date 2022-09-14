FROM node:16-alpine 

WORKDIR /usr/src/app

COPY package-lock.json ./

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "src/main.ts"]
