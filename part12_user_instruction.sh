# masuk ke folder .\part11_user_instruction pada cmd lalu jalankan perintah beirkut
docker build -t natanaeldaurangga/user .


# memodifikasi env
docker container create --name user_instruction --env APP_PORT=8085 -p 8085:8085 natanaeldaurangga/user

# memulai container
docker container start user_instruction

# masuk ke container
docker container exec -it user_instruction /bin/sh


