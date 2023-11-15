# Perintah untuk membuat Docker image dari Dockerfile
docker build -t item-app:v1 .

# Menampilkan daftar image di lokal
docker images

# Login ke Docker Hub via Terminal
echo $PASSWORD_DOCKER_HUB | docker login -u sugiannoor --password-stdin

#Mengubah nama image sesuai yang ada di DockerHub
docker tag item-app:v1 sugiannoor/item-app:v1

# Mengunggah image ke Docker Hub
docker push sugiannoor/item-app:v1