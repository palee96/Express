FROM node:16-alpine as development

WORKDIR /usr/src/app

COPY package-lock.json ./

COPY package.json ./

RUN npm install

COPY . ./

RUN npm run build

FROM node:16-alpine as production

ARG NODE_EVN=production
ENV NODE_ENV=${NODE_ENV}

WORKDIR /usr/src/app

COPY package-lock.json ./

COPY package.json ./

RUN npm ci --only=production

COPY --from=development /usr/src/app/dist ./dist

CMD ["node", "dist/main.js"]
