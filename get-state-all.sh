#!bash

containers=$(docker ps --format={{.Names}})

for container in $containers
do 
    state=$(docker inspect --format='{{.State}}' $container)

    echo $state
done

