FROM golang:1.16-alpine

WORKDIR /app

COPY . .

RUN go build && \
  adduser -D user && \
  chown user .

USER user

ENV REQUEST_ORIGIN http://localhost

EXPOSE 8080

CMD ["./server"]
