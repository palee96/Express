FROM node:16-alpine 

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package-lock.json ./

COPY package.json ./

COPY . .

RUN npm install

RUN npm ci

COPY . /usr/src/app

EXPOSE 3000

CMD ["npm", "src/main.ts"]

