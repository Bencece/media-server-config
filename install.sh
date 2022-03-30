#! /bin/bash

echo "$(tput setaf 2)Installing Docker on your system...$(tput sgr 0)"

sudo apt-get update

sudo apt-get install ca-certificates curl gnupg lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

mkdir -p ~/.docker/cli-plugins/

curl -SL https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-linux-$(uname -m) -o ~/.docker/cli-plugins/docker-compose

chmod +x ~/.docker/cli-plugins/docker-compose

echo "(tput setaf 2)Installation is complete!$(tput sgr 0)"

echo "$(tput setaf 2)Do some configurations...$(tput sgr 0)"
echo "Please provide your username to make necessary folders and configs! (like: ubuntu)"

read uname

sudo groupadd docker

sudo usermod -aG docker $uname

newgrp docker

mkdir /home/$uname/jellyfin
mkdir /home/$uname/jellyfin/config
mkdir /home/$uname/jellyfin/cache

mkdir -p /home/$uname/apache/config

echo "Please provide your domain url to make the httpd config! (like: my-domain.awsome.net)"

read url

sed -i "s/!!url!!/$url/" "/config/apache.conf"

echo "$(tput setaf 2)We are done! Ready to start. Please run start.sh!$(tput sgr 0)"