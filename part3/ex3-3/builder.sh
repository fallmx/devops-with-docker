#!/bin/sh

mkdir builder_temp
cd builder_temp
git clone "https://github.com/$1" .
docker build -t $2 .
docker push $2
cd ..
rm -rf builder_temp
