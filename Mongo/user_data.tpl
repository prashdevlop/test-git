#!/bin/bash
sudo yum update -y
sudo yum install docker -y
sudo yum install docker-compose -y
sudo service docker start
sudo chkconfig dcoker on
sudo docker-compose -f docker-compose.yml