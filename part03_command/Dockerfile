
# ● CMD atau Command, merupakan instruksi yang digunakan ketika Docker Container berjalan
# ● CMD tidak akan dijalankan ketika proses build, namun dijalankan ketika Docker Container
# berjalan
# ● Dalam Dockerfile, kita tidak bisa menambah lebih dari satu instruksi CMD, jika kita tambahkan
# lebih dari satu instruksi CMD, maka yang akan digunakan untuk menjalankan Docker Container
# adalah instruksi CMD yang terakhir

# ● Perintah CMD memiliki beberapa format :
# ● CMD command param param
# ● CMD [“executable”, “param”, “param”]
# ● CMD [“param”, “param”]
FROM alpine:3

# dieksekusi ketika image dibuild
RUN mkdir hello
RUN echo "Hello World" > "hello/world.txt"

# dieksekusi setiap kali docker container yang menggunakan image INI dijalankan
CMD cat "hello/world.txt"


