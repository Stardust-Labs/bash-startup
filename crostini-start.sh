## create folder architecture
cd ~
mkdir downloads
mkdir devtools
mkdir projects
mkdir .ssh
mkdir .bash-extensions

## install basic things that are needed
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install wget curl man-db

## install php7.2
sudo apt-get -y install apt-transport-https lsb-release ca-certificates
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list

sudo apt-get update
sudo apt-get -y install php7.2

sudo apt-get -y install php7.2-cli php7.2-common php7.2-curl php7.2-gd php7.2-json php7.2-mbstring php7.2-mysql php7.2-opcache php7.2-readline php7.2-xml php7.2-zip

## install composer globally
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

sudo mv composer.phar /usr/local/bin/composer

## install python
sudo apt-get -y install python3 python3-pip

## install sublime text and merge
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get -y install sublime-text sublime-merge

## install gimp
sudo apt-get -y install gimp

## install okular
sudo apt-get -y install okular

## install flutter globally
cd devtools
wget https://storage.googleapis.com/flutter_infra/releases/beta/linux/flutter_linux_v0.8.2-beta.tar.xz -O flutter.tar.xz
tar xf flutter.tar.xz
rm flutter.tar.xz
#export PATH=~/devtools/flutter/bin:$PATH

## create custom aliases and functions files
cd ~/.bash-extensions
source create-bashfiles.sh

