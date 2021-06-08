FROM node:alpine

WORKDIR /app
COPY  package.json .

COPY package-lock.json .

COPY index.js .

RUN npm install 

EXPOSE 3000

CMD ["node", "index.js"]