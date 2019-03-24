#!/bin/bash
MONGO_INITDB_ROOT_USERNAME=`cat /ec2-user/user.txt`
MONGO_INITDB_ROOT_PASSWORD=`cat /ec2-user/password.txt`
ME_CONFIG_MONGODB_ADMINUSERNAME=`cat /ec2-user/user.txt`
ME_CONFIG_MONGODB_ADMINPASSWORD=`cat /ec2-user/password.txt`
sudo yum update -y
sudo yum install docker -y
sudo yum install python-pip -y
sudo pip install docker-compose
sudo service docker start
sudo chkconfig docker on
sudo docker-compose -f /home/ec2-user/docker-compose.yml up