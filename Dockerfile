FROM node:16-alpine 

RUN mkdir /app

WORKDIR /app

COPY package-lock.json ./

COPY package.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["node", "dist/main.js"]
