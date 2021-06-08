#!bin/sh

curl --fail http://localhost:3000 || exit 1
# exit 1 => unhealty 
# exit 0 => healty

#pour une base de donnée, on peut directement tester le healthcheck avec un select 