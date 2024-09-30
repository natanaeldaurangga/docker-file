# demo-docker-0.0.1-SNAPSHOT.jar
FROM openjdk:17-jdk-alpine

RUN mkdir app

COPY sample-docker.jar app

EXPOSE 8082
ENTRYPOINT [ "java", "-jar" ]
CMD ["/app/sample-docker.jar"]