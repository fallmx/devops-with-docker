FROM golang:1.16

WORKDIR /app

COPY . .

RUN go build

ENV REQUEST_ORIGIN http://localhost

EXPOSE 8080

RUN adduser user

RUN chown user .

USER user

CMD ["./server"]
