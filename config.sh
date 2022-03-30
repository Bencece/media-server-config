#! /bin/bash

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

echo "$(tput setaf 2)We are done! Ready to start. Please run start.sh!$(tput sgr 0)"