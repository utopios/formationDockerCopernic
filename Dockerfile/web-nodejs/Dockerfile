FROM alpine

# RUN apt-get update -y -q && apt-get upgrade -y -q

RUN apk add nodejs -y -q  &&  apk add npm

WORKDIR /app

COPY . .

RUN npm install

CMD [ "node","index.js" ]