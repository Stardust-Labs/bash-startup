## store repo directory because this script changes dir a few times
CURDIR=$PWD

## create folder architecture
mkdir ~/downloads
mkdir ~/devtools
mkdir ~/projects
mkdir ~/scripts
mkdir ~/scripts/python
mkdir ~/scripts/php
mkdir ~/scripts/cpp
mkdir ~/scripts/asm
mkdir ~/scripts/dart
mkdir ~/scripts/js
mkdir ~/.ssh
mkdir ~/.bash-extensions

## install basic things that are needed
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install wget curl man-db iputils-ping htop unzip

## install php7.2
sudo apt-get -y install apt-transport-https lsb-release ca-certificates software-properties-common
sudo add-apt-repository ppa:ondrej/php

sudo apt-get update
sudo apt-get -y install php7.2

sudo apt-get -y install php-pear php7.2-cli php7.2-common php7.2-curl php7.2-gd php7.2-json php7.2-mbstring php7.2-mysql php7.2-opcache php7.2-readline php7.2-xml php7.2-zip

## install nodejs
curl -sL https://deb.nodesource.com/setup_8.x | sudo bash -
sudo apt install nodejs -y

## install python
sudo apt-get -y install python3 python3-pip

## install dart
sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
sudo apt-get update
sudo apt-get -y install dart

## install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## create custom aliases and functions files
cd $CURDIR
source create-bashfiles.sh
cd $CURDIR && cd ..
source create-profiles.sh

# TODO: these need to be made available before installs can be performed
source npm-installs.sh
source pip-installs.sh
source composer-installs.sh
cd $CURDIR

