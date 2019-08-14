FROM openjdk:8-jdk-alpine
RUN mkdir -p /app
COPY build/libs_/*.jar /app/app.jar
ADD build/libs_/*.jar /app/app.jar
ENTRYPOINT ["/usr/bin/java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/app.jar"]