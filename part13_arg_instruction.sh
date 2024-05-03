# masuk ke folder .\part13_arg_instruction pada cmd lalu jalankan perintah beirkut
docker build -t natanaeldaurangga/arg . --build-arg app=aplikasi


# memodifikasi env
docker container create --name arg --env APP_PORT=8085 -p 8085:8085 natanaeldaurangga/arg




