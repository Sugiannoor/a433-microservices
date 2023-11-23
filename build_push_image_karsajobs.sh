# Build Docker image untuk backend
docker build -t sugiannoor/karsajobs:latest .

# Menampilkan daftar image lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag sugiannoor/karsajobs:latest sugiannoor/karsajobs:latest

# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u sugiannoor --password-stdin

# Mengunggah image ke Docker Hub
docker push sugiannoor/karsajobs:latest