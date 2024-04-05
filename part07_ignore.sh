# masuk ke folder part07_ignore
docker build -t natanaeldaurangga/ignore .

docker container create --name ignore natanaeldaurangga/ignore

docker container start ignore

docker container logs ignore


