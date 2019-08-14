FROM java:8
EXPOSE 8090
VOLUME /tmp

ARG JAR_FILE=build/libs/capcodigitalengineeringcourse-0.1.0.jar
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]