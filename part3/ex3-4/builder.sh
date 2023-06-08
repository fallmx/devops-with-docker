#!/bin/sh

mkdir builder_temp
cd builder_temp
git clone "https://github.com/$1" .
docker login -u $DOCKER_USER -p $DOCKER_PWD
docker build -t $2 .
docker push $2
cd ..
rm -rf builder_temp
