FROM openjdk:8-jdk-alpine
RUN mkdir -p /app
ADD build/libs/*.jar /app/app.jar
ENTRYPOINT ["/usr/bin/java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/app.jar"]



