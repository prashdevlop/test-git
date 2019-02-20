#!/bin/bash
sudo yum update -y
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker
cat ~/password.txt | docker login --username prashdevlop --password-stdin
sudo docker build -t prashdevlop/newtest:v1 .