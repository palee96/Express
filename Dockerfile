FROM node:16-alpine as development

WORKDIR /Express/src/app

COPY package*.json .

RUN npm install

COPY . .

RUN npm run build

FROM node:16-alpine as production

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

WORKDIR /Express/src/app

COPY package*.json .

RUN npm ci --only=production

CMD ["node", "main.ts"]
