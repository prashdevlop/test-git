#! /bin/bash
sudo yum update –y
sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install jenkins -y
sudo service jenkins start
cd
mkdir .ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDLcC1EH8c1m7Fg26A9TGBMR50NMRW2mLXRGg9U7qZpVWVdbbVmVpWS4BbJPotI1jiScHv/DbwsS9RUw364A7en3tkDXQJntH25joqWq99QgtV7CNsTtDqbj9bqwmv/a5vh7PWYCXQZo+CpFJ7ilHf15vX43wtkcXl4evSqI4FLrKbbuVG0fQ8EVETXDh1oTbFAFBsDepwXJOtiCN3hj1NdH37J5vKESbqqwo0Mom8TnMDRWPb/hjYifFXXJODIDNf14s5FbzNo2m5Qh5jgZ6dl7lwOqXwnT2rhdnCmPsHaluDSpgVcYLCov3m1ForbTw76z1JHNPu5R/bXXb4X9Yz5 Prashant@DESKTOP-E4P0MD8" >> .ssh/authorized_keys