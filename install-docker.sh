#!/bin/bash

#check whether root user or not 
R="\e[31m"
N="\e[31m"


yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
usermod -aG docker ec2-user
echo -e "$R Logout and Login again $"