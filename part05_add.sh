# masuk ke folder part05_add_instruction
docker build -t natanaeldaurangga/add .

docker container create --name add natanaeldaurangga/add

docker container start add

docker container logs add
