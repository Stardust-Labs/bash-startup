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
sudo apt-get -y install wget curl man-db iputils-ping htop

## install php7.2
sudo apt-get -y install apt-transport-https lsb-release ca-certificates software-properties-common
sudo add-apt-repository ppa:ondrej/php

sudo apt-get update
sudo apt-get -y install php7.2

sudo apt-get -y install php-pear php7.2-cli php7.2-common php7.2-curl php7.2-gd php7.2-json php7.2-mbstring php7.2-mysql php7.2-opcache php7.2-readline php7.2-xml php7.2-zip

## install composer globally
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

sudo mv composer.phar /usr/local/bin/composer

## install python
sudo apt-get -y install python3 python3-pip

## install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## create custom aliases and functions files
cd $CURDIR
source create-bashfiles.sh
cd $CURDIR && cd ..
source create-profiles.sh
source npm-installs.sh
source pip-installs.sh
source composer-installs.sh
cd $CURDIR

