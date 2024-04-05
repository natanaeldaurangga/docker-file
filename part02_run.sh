# ● RUN adalah sebuah instruksi untuk mengeksekusi perintah di dalam image pada saat build stage.
# ● Hasil perintah RUN akan di commit dalam perubahan image tersebut, jadi perintah RUN akan
# dieksekusi pada saat proses docker build saja, setelah menjadi Docker Image, perintah tersebut
# tidak akan dijalankan lagi.
# ● Jadi ketika kita menjalankan Docker Container dari Image tersebut, maka perintah RUN tidak akan
# dijalankan lagi.

docker build -t natanaeldaurangga/run part02_run

# jika ingin menampilkan logging (apa saja yg sedang terjadi) saat sedang build
docker build -t natanaeldaurangga/run part02_run --progress=plain

# jika kita build Dockerfile lebih dari 1 kali, biasanya perintah RUN tidak akan dijalankan lagi
# untuk yg keduakalinya, agar bisa dijalankan lagi kita harus pasang parameter --no-cache
docker build -t natanaeldaurangga/run part02_run --no-cache

