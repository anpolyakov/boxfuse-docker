# Build Docker image and start container from this image
#!/bin/bash
apt update -y
apt install docker.io -y
systemctl enable --now docker
docker rm $(docker ps -aq) -f
docker images prune
docker build -t boxfuse-docker:latest .
docker run -d -it -p 8080:8080 boxfuse-docker
