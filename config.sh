#! /bin/bash

echo "$(tput setaf 2)Do some configurations...$(tput sgr 0)"

mkdir /home/${USER}/jellyfin
mkdir /home/${USER}/jellyfin/config
mkdir /home/${USER}/jellyfin/cache

echo "$(tput setaf 2)We are done! Ready to start. Please run start.sh!$(tput sgr 0)"