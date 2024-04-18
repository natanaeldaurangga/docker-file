# demo-docker-0.0.1-SNAPSHOT.jar
FROM openjdk:17-jdk-alpine

COPY target/demo-docker-0.0.1-SNAPSHOT.jar demo-docker-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java", "-jar", "/demo-docker-0.0.1-SNAPSHOT.jar"]

ENV APP_PORT=8082
ENV NAMA_USER=Nael

EXPOSE ${APP_PORT}

CMD java -jar /demo-docker-0.0.1-SNAPSHOT.jar

