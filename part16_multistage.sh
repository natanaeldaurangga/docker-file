# masuk ke folder .\part15_entrypoint pada cmd lalu jalankan perintah beirkut
docker build -t natanaeldaurangga/multi .


# bikin container
docker container create --name multi -p 8085:8085 natanaeldaurangga/multi


