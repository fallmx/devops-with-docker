FROM amazoncorretto:8-alpine as build-stage

WORKDIR /app

COPY . .

RUN ./mvnw package

FROM amazoncorretto:8-alpine-jre

WORKDIR /app

COPY --from=build-stage /app/target/docker-example-1.1.3.jar /app

RUN adduser -D user && \
  chown user .

USER user

EXPOSE 8080

CMD ["java", "-jar", "./docker-example-1.1.3.jar"]
