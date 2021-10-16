#!/bin/bash

#Uninstall old versions. 
sudo apt-get -yq remove docker docker-engine docker.io containerd runc

#Update the apt package index and install packages to allow apt to use a repository over HTTPS:
sudo apt-get -q  update
sudo apt-get -yq install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

#Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#Use the following command to set up the stable repository
echo \
 "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#Update the package sources
sudo apt-get -q update

#Install Docker
sudo apt-get -yq install docker-ce docker-ce-cli containerd.io

#Create the docker group
sudo groupadd docker

#Add your user to the docker group.
sudo usermod -aG docker $USER

#Register the Docker service	
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

#Run this command to download the current stable release of Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

#Apply executable permissions to the binary
sudo chmod +x /usr/local/bin/docker-compose

#Test the installation.
docker-compose --version
