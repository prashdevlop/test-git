#!/bin/bash
MONGO_INITDB_ROOT_USERNAME=`cat /root/user.txt`
MONGO_INITDB_ROOT_PASSWORD=`cat /root/password.txt`
ME_CONFIG_MONGODB_ADMINUSERNAME=`cat /root/user.txt`
ME_CONFIG_MONGODB_ADMINPASSWORD=`cat /root/password.txt`
sudo yum update -y
sudo yum install docker -y
sudo yum install python-pip -y
sudo pip install docker-compose
sudo service docker start
sudo chkconfig docker on
sudo docker-compose -f /home/ec2-user/docker-compose.yml up