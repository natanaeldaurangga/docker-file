docker build -t natanaeldaurangga/command command

docker container create --name command natanaeldaurangga/command

docker container start command # karena paka alpine maka container ini akan langsung stop

docker container logs command
# output: Hello World

