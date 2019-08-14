FROM openjdk:8u171-jdk-alpine3.8

RUN apk add --no-cache mongodb

VOLUME /data/db

# Expose MongoDB ports
EXPOSE 27017

CMD [ "mongod" ]

ARG JAR_FILE=build/libs/capcodigitalengineeringcourse-0.1.0.jar
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]

EXPOSE 8090

