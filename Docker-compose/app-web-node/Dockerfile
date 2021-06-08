FROM node:alpine

WORKDIR /app
COPY  package.json .

COPY package-lock.json .

COPY index.js .

RUN npm install 
RUN apk add --no-cache --upgrade bash
RUN apk add curl

EXPOSE 3000

# HEALTHCHECK --interval=1m --timeout=30s --retries=3 CMD curl --fail http://localhost:3000 || exit 1

CMD ["node", "index.js"]