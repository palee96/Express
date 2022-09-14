FROM node:6.10.3

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json ./

<<<<<<< HEAD
RUN npm ci

=======
>>>>>>> 468f79db30be9b87c1117af7d3942104243b9f1b
COPY . .

RUN npm install express

RUN npm ci

COPY . /usr/src/app

EXPOSE 3000

<<<<<<< HEAD
CMD ["node", "dist/main.js"]
=======
CMD ["npm", "src/main.ts"]

>>>>>>> 468f79db30be9b87c1117af7d3942104243b9f1b
