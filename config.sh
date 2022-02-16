#! /bin/bash

echo "$(tput setaf 2)Do some configurations...$(tput sgr 0)"
echo "Please provide your username to make necessary folders!"

read uname

mkdir /home/$uname/jellyfin
mkdir /home/$uname/jellyfin/config
mkdir /home/$uname/jellyfin/cache

echo "$(tput setaf 2)We are done! Ready to start. Please run start.sh!$(tput sgr 0)"