FROM node:6.10.3

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package-lock.json ./

COPY package.json ./

COPY . .

RUN npm install express

RUN npm ci

COPY . /usr/src/app

EXPOSE 3000

CMD ["npm", "src/main.ts"]

