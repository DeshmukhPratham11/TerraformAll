#!/bin/bash

#Install Jenkins#

sudo apt update -y
sudo apt install fontconfig openjdk-17-jre -y

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update -y

sudo apt install jenkins -y

sudo systemctl enable jenkins 

sudo systemctl start jenkins 

#install git

apt update -y

apt install git -y

#install aws
sudo apt-get update -y

sudo apt-get install awscli -y