FROM openjdk:8-jdk-alpine
EXPOSE 8090
VOLUME /tmp
ARG DEPENDENCY=home/circleci/repo/build
COPY ${DEPENDENCY}/libs/capcodigitalengineeringcourse-0.1.0.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]