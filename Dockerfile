Developing a JavaScript App
Get image from Docker Hub
Commit to Git
CI with Jenkins (builds JS App & creates Docker image)
Push to Docker Repository
Copying artifact

DOCKERFILE:
FROM node:13-alpine
ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password
RUN mkdir -p /home/app
COPY . /home/app
CMD ["node","/home/app/server.js"]

Image Layers:
app:1.0
node:13-alpine
alpine:3.10

OPEN TERMINAL:
docker build -t my-app:1.0 .
docker images

docker run my-app:1.0
docker rmi <IMAGE ID>
docker ps -a
docker ps -a | grep my-app

docker run my-app:1.0
docker exec -it <CONTAINER ID> /bin/bash
docker exec -it <CONTAINER ID> /bin/sh
ls
env
ls /home/app
exit

docker images
docker stop <CONTAINER ID>
docker rm <CONTAINER ID>
docker rmi <IMAGE ID>
docker images
docker build -t my-app:1.0 .
docker run my-app:1.0
docker ps
docker exec -it <CONTAINER ID> /bin/sh
ls /home/app
