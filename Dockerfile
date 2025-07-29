FROM FROM alpine:3.14
RUN apk update && apk add bind-tools

FROM maven:3.9.8-amazoncorretto-17

EXPOSE 8080
EXPOSE 3000
EXPOSE 5000
EXPOSE 50000

COPY . .

RUN  mvn package -ntp -Dmaven.test.skip

ENTRYPOINT ["java","-jar","target/spotme-api-gateway-0.0.1-SNAPSHOT.jar"]