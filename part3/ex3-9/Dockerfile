FROM golang:1.16-alpine as build-stage

WORKDIR /app

COPY . .

RUN CGO_ENABLED=0 go build

FROM scratch

COPY --from=build-stage /app/server /

ENV REQUEST_ORIGIN http://localhost

EXPOSE 8080

CMD ["./server"]
