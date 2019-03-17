#!/bin/bash
id
sudo yum update -y
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker
DOCKER_USER=`cat /root/user.txt`
DOCKER_PASS=`cat /root/password.txt`
#For docker v-18
#cat ~/password.txt | docker login --username prashdevlop --password-stdin
docker login --username=$DOCKER_USER --password=$DOCKER_PASS
sudo docker build -t $DOCKER_USER/newtest:v1 .
sudo docker push $DOCKER_USER/newtest:v1