FROM golang:1.16

WORKDIR /app

COPY . .

RUN go build

ENV REQUEST_ORIGIN http://localhost:5000

EXPOSE 8080

CMD ["./server"]
