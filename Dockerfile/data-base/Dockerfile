FROM debian

# ENV MYSQL_ROOT_PASSWORD=''
RUN apt-get update -y -q && apt-get upgrade -y -q
RUN apt-get install -y -q mariadb-server

WORKDIR /app

COPY . .

CMD service mysql start && mysql < data.sql && bash

