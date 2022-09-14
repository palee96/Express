FROM node:16-alpine 

WORKDIR /app

COPY package-lock.json ./

COPY package.json ./

COPY . .

RUN npm install -g npm-check-updates 
RUN npm install 
RUN npm install express 

RUN npm ci

COPY . /app

EXPOSE 3000

CMD ["node", "src/main.ts"]
