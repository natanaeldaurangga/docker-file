# masuk ke folder .\part14_health_check pada cmd lalu jalankan perintah beirkut
docker build -t natanaeldaurangga/health .


# bikin container
docker container create --name health -p 8082:8082 natanaeldaurangga/health

# memulai container
docker container start health

# mengecek health
docker container ls

