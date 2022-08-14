#!/bin/sh
sudo su
yum update -y
yum install docker -y
systemctl start docker
systemctl start docker.service
systemctl enable docker.service
curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose version
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
wget https://raw.githubusercontent.com/aayvyas/keycloak/main/ps-ta-search-docker-compose/docker-compose.yml
docker-compose up
echo Hello World