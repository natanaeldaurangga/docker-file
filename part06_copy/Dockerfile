
# ● COPY adalah instruksi yang dapat digunakan untuk menambahkan file dari source ke dalam folder
# destination di Docker Image
# ● Lantas apa bedanya dengan instruksi ADD kalo begitu?
# ● COPY hanya melakukan copy file saja, sedangkan ADD selain melakukan copy, dia bisa
# mendownload source dari URL dan secara otomatis melakukan extract file kompres
# ● Namun best practice nya, sebisa mungkin menggunakan COPY, jika memang butuh melakukan
# extract file kompres, gunakan perintah RUN dan jalankan aplikasi untuk extract file kompres
# tersebut

FROM alpine:3

RUN mkdir hello
COPY text/*.txt hello

CMD cat "hello/world.txt"
