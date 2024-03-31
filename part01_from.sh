# build docker image
docker build -t usernamedockerhub/namaimage foldertempatdockerfile

docker build -t natanaeldaurangga/from part01_from_instruction

# note: shell kita harus berada satu level diluar folder part01_from_instruction

# namun, jika kita berada di dalam folder part01_from_instruction, maka kita hanya perlu mengganti nama folder menjadi titik .

docker build -t natanaeldaurangga/from .
