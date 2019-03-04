#! /bin/bash
sudo yum update -y
sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install java -y --skip-broken
sudo yum install jenkins -y
sudo systemctl restart jenkins
sudo systemctl enable jenkins