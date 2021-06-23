FROM gradle:7.1.0-jdk8 AS builder
WORKDIR '/app'
COPY . .
RUN gradle clean build -x test

FROM openjdk:8
WORKDIR '/app'
COPY --from=builder /app/build/libs/docker-app-*-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]