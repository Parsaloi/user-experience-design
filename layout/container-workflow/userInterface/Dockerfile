FROM openjdk:11-jdk-alpine

RUN mkdir /ua-app

WORKDIR /ui-app

COPY build/libs/distributions/userInterface-shadow-1.0.0-SNAPSHOT.tar

EXPOSE 8081

ENTRYPOINT [ "java", "-jar", "userInterface-1.0.0-SNAPSHOT-fat.jar"]
