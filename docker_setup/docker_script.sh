#!/bin/bash
#This script builds the image and runs the container
#Building the image
echo "Running the dockerfile"
docker build -f /home/vagrant/Dockerfile -t nginx-xenial/v1  /home/vagrant/
echo "List of the images"
docker images
#Starting the container
echo "Running a container from the build image"
docker run --name app -p 80:80 -d -t -i nginx-xenial/v1 /bin/bash
echo "container status"
docker ps -a

#To trigger docker compose, comment the above section
#docker-compose up
