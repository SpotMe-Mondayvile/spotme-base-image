FROM alpine:3.14
RUN apk update && apk add bind-tools

FROM maven:3.9.8-amazoncorretto-17

EXPOSE 8080
EXPOSE 3000
EXPOSE 5000
EXPOSE 50000

COPY . .

ENTRYPOINT ["/bin/bash"]