#!/usr/bin/env bash

dirname=$(cd $(dirname $0);pwd)
cd $dirname

docker build -t yukidic .

CONTAINER_ID=`docker create yukidic`
docker cp ${CONTAINER_ID}:/app/kuromojijs-dict-maker/dist/ .
docker rm ${CONTAINER_ID}

find dist/ -type f|xargs -I@ cp -f @ dic/
