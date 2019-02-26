#! /bin/bash
sudo yum update –y
sudo yum install wget -y
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install java -y
sudo yum install jenkins -y
sudo service jenkins start
cd
mkdir .ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDI47R+izsAsYd2sYhdvFKmtIg8pKRW1K5nfQXho8AuN/MbV4J5lS7E/7wHQTI4QYCvknXATRnT+iQWeOQIA2NRQh+hNFNZ5gekksu8IBcjoJKS/hLnSA25xMFf5Z5YE+/xaGfwh9vzfhMSIJwm/RCagxOVrW/kEyFc4/ZkIQUEvwmtoFU7OpdjDF8iAenBHDz6DDgeu2a3qO0spVsHuOG7OjvFnUW8Ku9uwYL9rpOQLzr/T1syX/uyY3qGtOQfUMW/qiaf4++Ix4v65gYBwMs9PszTkUXlda7GDiVqcWIHQnwII/UJm2npALblNC/WWy4JXbCjqTJLH9X+YobedrZF Prashant@DESKTOP-E4P0MD8" >> .ssh/authorized_keys
sudo chmod 600 .ssh/authorized_keys