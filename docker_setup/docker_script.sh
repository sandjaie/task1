#!/bin/bash
#This script builds the image and runs the container
#Building the image
echo "Running the dockerfile"
docker build -f /home/vagrant/Dockerfile -t nginx-xenial/v1  /home/vagrant/
echo "List of the images"
docker images
#Starting the container
echo "Running a container from the build image"
docker run --name app -p 80:80 -d nginx-xenial/v1
echo "container status"
docker ps -a
#Creating the sites folder
docker exec app 