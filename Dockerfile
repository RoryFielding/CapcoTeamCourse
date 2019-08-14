FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8090
ADD /build/libs/capcodigitalengineeringcourse-0.1.0.jar capcodigitalengineeringcourse-0.1.0.jar
ENTRYPOINT ["java", "-jar","/app.jar"]
