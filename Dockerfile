FROM node:16-alpine as development

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm install -g npm@8.19.2

COPY . .

RUN chmod +x src/main.ts

RUN npm run build

FROM node:16-alpine as production

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --only=production

COPY --from=development /usr/src/app/dist ./dist

CMD ["node", "dist/main.js"]
