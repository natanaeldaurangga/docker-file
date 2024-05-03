# masuk ke folder .\part11_workingdirectory pada cmd lalu jalankan perintah beirkut
docker build -t natanaeldaurangga/working-directory .


# memodifikasi env
docker container create --name working_directory --env APP_PORT=8085 -p 8085:8085 natanaeldaurangga/working-directory

# memulai container
docker container start working_directory

# masuk ke container
docker container exec -it workign_directory /bin/sh


