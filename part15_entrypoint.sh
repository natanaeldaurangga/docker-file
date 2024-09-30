# masuk ke folder .\part15_entrypoint pada cmd lalu jalankan perintah beirkut
docker build -t natanaeldaurangga/entrypoint .


# bikin container
docker container create --name entrypoint -p 8082:8082 natanaeldaurangga/entrypoint


