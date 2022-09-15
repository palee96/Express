FROM node:alpine 

RUN npm install express

COPY . /main

WORKDIR /main

EXPOSE 9876

CMD ["node", "main.js"]
