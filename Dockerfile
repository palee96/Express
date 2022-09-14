FROM node:16-alpine 

WORKDIR /usr/src/app

COPY package*.json ./

EXPOSE 3000

RUN npm install --force

CMD ["node", "src/main.ts"]
