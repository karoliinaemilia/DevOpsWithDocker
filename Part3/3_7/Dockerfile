FROM openjdk:8-jdk-alpine as build-stage

COPY spring-example-project/mvnw .
COPY spring-example-project/.mvn .mvn
COPY spring-example-project/pom.xml .
COPY spring-example-project/src src

EXPOSE 8080

RUN ./mvnw package

FROM openjdk:8-jdk-alpine

COPY --from=build-stage ./target/docker-example-1.1.3.jar .

RUN adduser -D app && chown app ./docker-example-1.1.3.jar

USER app

CMD java -jar ./docker-example-1.1.3.jar