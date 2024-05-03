# demo-docker-0.0.1-SNAPSHOT.jar
FROM openjdk:17-jdk-alpine

COPY target/demo-docker-0.0.1-SNAPSHOT.jar demo-docker-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java", "-jar", "/demo-docker-0.0.1-SNAPSHOT.jar"]

ENV APP_PORT=8082
ENV NAMA_USER=Nael
ENV APP_DATA=/logs

RUN mkdir ${APP_DATA}
RUN mkdir app

EXPOSE ${APP_PORT}
# otomatis akan dibuatkan volume untuk folder logs
VOLUME ${APP_DATA}

CMD java -jar demo-docker-0.0.1-SNAPSHOT.jar

