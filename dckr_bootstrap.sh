#!/usr/bin/env bash

set -e

echo "Run dckr_bootstrap.sh"

sudo apt update

sudo groupadd -f docker

#sudo usermod -aG docker $USER

sudo usermod -aG docker vagrant

newgrp docker

# Add Docker's official GPG key:
 
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

sudo apt -y install docker.io

sudo curl -L "https://github.com/docker/compose/releases/download/v2.21.0/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose


sudo chmod -R 777 /home/vagrant/database


sudo systemctl start docker

sudo systemctl enable docker

sudo docker version


docker-compose up -d

