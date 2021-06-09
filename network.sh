#!bin/bash


containers=$(docker ps -a --format={{.Names}})
TAB=()
for container in $containers
do 
    IP=$(docker inspect --format='{{.NetworkSettings.IPAddress}}' $container)
    MAC=$(docker inspect --format='{{.NetworkSettings.MacAddress}}' $container)
    PORT=$(docker inspect --format='{{.NetworkSettings.Ports}}' $container)
    GATEWAY=$(docker inspect --format='{{.NetworkSettings.Gateway}}' $container)
    echo -e $IP
    echo -e $MAC
    echo -e $PORT
    echo -e $GATEWAY
done

