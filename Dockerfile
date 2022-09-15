FROM node:alpine 

COPY . /main

WORKDIR /main

RUN npm install express

EXPOSE 9876

CMD ["node", "main.js"]
