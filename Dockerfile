FROM node:16-alpine as development

WORKDIR /Express/src/app

COPY package*.json .

RUN npm install

COPY . .

RUN npm run build

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

CMD ["node", "main.ts"]
