# masuk ke folder part06_copy
docker build -t natanaeldaurangga/copy .

docker container create --name copy natanaeldaurangga/copy

docker container start copy

docker container logs copy
