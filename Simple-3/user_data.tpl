#! /bin/bash
sudo yum -y update 
sudo yum -y nginx
sudo service nginx start
sudo chkconfig nginx on