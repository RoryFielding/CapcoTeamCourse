FROM openjdk:8-jdk-alpine
EXPOSE 8090
VOLUME /tmp
ARG DEPENDENCY=build
COPY ${DEPENDENCY}/libs/capcodigitalengineeringcourse-0.1.0.jar
ENTRYPOINT ["java","-jar","capcodigitalengineeringcourse-0.1.0.jar"]