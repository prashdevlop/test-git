#! /bin/bash
sudo yum update –y
sleep 20
sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install java -y
sleep 30
sudo yum install jenkins -y
sudo service jenkins start
cd
mkdir .ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC15KHtQUkNQMdQb4FuyH5nR8Dyjj85p7bJ95ljqL6u6L3O1PyBZloEEmQnundNM2PKilvk8piH5Tqs1VmNFctZ9MrreIv+hgE0nvKacLXjO5SxiLcJm2MAXhYx58SaXM9dSJXHyrOPdYCMgVaIBmYOCkuJGXWTrEXeJDa1EII4lSkVwsa6axjOAMAAkLAj5CAXo1gUliXW9rpe/zn4brucunJApgFXwwIS7LFmrR2iOrWRbKagOWqeM97fzSwxwqsgebl7Jf0mxwMFPG61l3zaBAySHbFd9CBTE4NYiD2myjpIQ/ZerrJx4Qa6P3bG38F/E1TPbOhWek1+8RSoR0Ph Prashant@DESKTOP-E4P0MD8" >> .ssh/authorized_keys
chmod 600 .ssh/authorized_keys