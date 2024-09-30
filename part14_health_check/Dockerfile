# demo-docker-0.0.1-SNAPSHOT.jar
FROM openjdk:17-jdk-alpine

# menginstall aplikasi curl untuk melakukan http request
RUN apk --no-cache add curl
RUN mkdir app

COPY sample-docker.jar app

EXPOSE 8082

# ini akan dijalankan tiap 5 detik, dan selama itu curl ini akan melakukan request terus sampai response
HEALTHCHECK --interval=5s --timeout=10s --start-period=20s CMD [ "curl -f http://localhost:8082/api" ]
CMD java -jar app/sample-docker.jar