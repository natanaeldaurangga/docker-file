# masuk ke folder .\part10_volume\demo-docker pada cmd lalu jalankan perintah beirkut
docker build -t natanaeldaurangga/volume .


# memodifikasi env
docker container create --name con_volume --env APP_PORT=8085 -p 8085:8085 natanaeldaurangga/volume



