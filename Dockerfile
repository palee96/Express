FROM node:alpine 

COPY . /main

WORKDIR /main

RUN npm install express

EXPOSE 3000

CMD ["node", "main.js"]
