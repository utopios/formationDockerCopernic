#--- L'origine de notre image
FROM debian:stable-slim

#--- Déclarer des variables au niveau du dockerfile
ENV FLAG="-y -q"

ENV ARGS=""
# ARG FLAG = "-y -q"
#--- pour executer des instructions à la construction de l'image
RUN apt-get update ${FLAG} && apt-get upgrade ${FLAG} 

#--- se placer dans le dossier /home/app des containers crées à partir de l'image
WORKDIR /home/app/toto

#--- tout copier à l'interieur de l'image ADD
#COPY . .

#ADD http://locahost/dossier.zip .

# Ouverture des ports
EXPOSE 90
EXPOSE 3000

# CMD ["bash", "arg"]
CMD entrypoint.sh
# ENTRYPOINT [ "bash" ]


