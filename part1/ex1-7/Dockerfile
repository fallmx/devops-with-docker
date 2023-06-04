FROM ubuntu:20.04

RUN apt-get update && apt-get -y install curl

WORKDIR /usr/src/app

COPY curler.sh .

RUN chmod +x ./curler.sh

CMD ./curler.sh
