#! /bin/bash
sudo yum -y update
sudo yum install -y wget
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install -y java
sudo yum install -y jenkins
sudo systemctl restart jenkins
sudo systemctl enable jenkins