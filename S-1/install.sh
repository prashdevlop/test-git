#!/bin/bash
wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -ivh epel-release-latest-7.noarch.rpm
sudo yum-config-manager --enable epel
sudo yum update -y
sudo yum install ansible -y 
