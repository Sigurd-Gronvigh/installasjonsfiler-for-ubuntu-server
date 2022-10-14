#!/bin/bash

set -e # stop on error

sudo apt update
sudo apt upgrade -y

sudo add-apt-repository ppa:ondrej/php

sudo timedatectl set-timezone Europe/Oslo
sudo apt install net-tools
sudo apt update
sudo apt upgrade -y

sudo apt install php8.1 libapache2-mod-php8.1 -y
sudo adduser $USER www-data
sudo chown -R $USER /var/www
sudo adduser www-data $USER

sudo apt-get install certbot python3-certbot-apache -y
sudo apt install zip unzip software-properties-common -y

sudo apt install -y php8.1-gd
sudo apt install -y php8.1-mbstring
sudo apt install -y php8.1-xml
sudo apt install -y php-zip
sudo service apache2 restart

sudo apt install php8.1-sqlite3
sudo service apache2 restart
php -m | grep sqlite

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer
sudo apt-get install php-curl -y

sudo apt update
sudo apt install ncdu
sudo apt install htop

sudo apt install openvpn -y

sudo apt install mysql-server -y
sudo apt update
sudo apt install -y php8.1-pdo-mysql

df --human --total
free --human
