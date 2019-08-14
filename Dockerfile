FROM java:8
EXPOSE 8090
VOLUME /tmp

ARG JAR_FILE
ADD ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]