# demo-docker-0.0.1-SNAPSHOT.jar
FROM openjdk:17-jdk-alpine

# Part12: User instruction (harus dijalankan sebelum copy dan sesudah from)
# by default user dari image alpine/linux yang lain adalah root
# membuat group user
RUN addgroup -S naelgroup

# menambahkan user
RUN adduser -S -D -h /app naeluser naelgroup

# mengubah ownersihp dari folder app dari root menjadi naeluser
RUN chown -R naeluser:naelgroup /app



# Part11: set default working directory ke /app pada vm alpinennya
WORKDIR /app
COPY target/demo-docker-0.0.1-SNAPSHOT.jar /app
#ENTRYPOINT ["java", "-jar", "/demo-docker-0.0.1-SNAPSHOT.jar"]




ENV APP_PORT=8082
ENV NAMA_USER=Budi
ENV APP_DATA=/logs

RUN mkdir ${APP_DATA}
RUN mkdir app


EXPOSE ${APP_PORT}
# otomatis akan dibuatkan volume untuk folder logs
VOLUME ${APP_DATA}


# Part11: jangan lupa set user (Set user harus sesudah copy dan lain lain, karena otoritasnya harus root)
USER naeluser
CMD java -jar demo-docker-0.0.1-SNAPSHOT.jar