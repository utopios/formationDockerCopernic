FROM node:10-slim

RUN apt-get update && apt-get install -y curl

WORKDIR /app

COPY package*.json ./

RUN npm install 

# COPY ./views /app/
# COPY server.js ./
COPY . .
# ENV PORT 55
# EXPOSE ${PORT}
EXPOSE 4000
CMD ["node", "server.js"]