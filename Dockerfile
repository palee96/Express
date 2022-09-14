FROM node:16-alpine 

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package-lock.json ./

COPY package.json ./

COPY . .

RUN npm install -g npm-check-updates 
RUN npm install 
RUN npm install express 

RUN npm ci

COPY . .

EXPOSE 3000

CMD ["node", "dist/main.js"]
