# Use the official gradle build container
# FROM gradle:jdk11-alpine AS builder

# WORKDIR /userInterface

# COPY build.gradle.kts gradlew ./

# Build the application
# RUN ./gradlew build

FROM adoptopenjdk/openjdk11:x86_64-alpine-jre-11.0.20_8

WORKDIR /userInterface

COPY /userInterface/build/libs/userInterface-1.0.0-SNAPSHOT-fat.jar .

CMD [ "java", "-jar", "-Dserver.port=${PORT}", "userInterface-1.0.0-SNAPSHOT-fat.jar" ]
