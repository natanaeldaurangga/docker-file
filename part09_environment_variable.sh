# masuk ke folder .\part09_environment_variable\demo-docker pada cmd lalu jalankan perintah beirkut
docker build -t natanaeldaurangga/env .


# memodifikasi env
docker container create --name env --env APP_PORT=8085 -p 8085:8085 natanaeldaurangga/env


