# demo-docker-0.0.1-SNAPSHOT.jar
FROM openjdk:17-jdk-alpine

RUN mkdir app
COPY target/demo-docker-0.0.1-SNAPSHOT.jar app

#part13: set arg
ARG app=aplikasi
RUN mv app/demo-docker-0.0.1-SNAPSHOT.jar app/${app}.jar

ENV APP_PORT=8082
ENV NAMA_USER=Budi
ENV APP_DATA=/logs
# Karena ARG hanya dijalankan pada saat build image, maka nilai app harus ditampung dulu
# ke env biar bisa di gunakan oleh perintah CMD (yang notabene nya adalah runtime bukan build)
ENV APP_OBJ=${app}

RUN mkdir ${APP_DATA}

EXPOSE ${APP_PORT}
VOLUME ${APP_DATA}

CMD java -jar app/${APP_OBJ}.jar