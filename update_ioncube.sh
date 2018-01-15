#!/bin/bash

cd /usr/local
sudo rm -rf ioncube_loaders_lin_x86-64.tar.gz
sudo rm -rf /usr/local/ioncube

echo "Download und entpacken der neusten ionCube Loader Version"
sudo wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
sudo tar xzf ioncube_loaders_lin_x86-64.tar.gz

### PHP 5.4
if [ -d "/opt/plesk/php/5.4/" ] 
then
    echo "Installation des ionCube Loader für PHP 5.4"
    sudo cp /usr/local/ioncube/ioncube_loader_lin_5.4.so /opt/plesk/php/5.4/lib/php/modules/
    sudo service plesk-php54-fpm.service restart
fi

### PHP 5.5
if [ -d "/opt/plesk/php/5.5/" ] 
then
    echo "Installation des ionCube Loader für PHP 5.5"
    sudo cp /usr/local/ioncube/ioncube_loader_lin_5.5.so /opt/plesk/php/5.5/lib/php/modules/
    sudo service plesk-php55-fpm.service restart
fi

### PHP 5.6
if [ -d "/opt/plesk/php/5.6/" ] 
then
    echo "Installation des ionCube Loader für PHP 5.6"
    sudo cp /usr/local/ioncube/ioncube_loader_lin_5.6.so /opt/plesk/php/5.6/lib/php/modules/
    sudo service plesk-php56-fpm.service restart
fi

### PHP 7.0
if [ -d "/opt/plesk/php/7.0/" ] 
then
    echo "Installation des ionCube Loader für PHP 7.0"
    sudo cp /usr/local/ioncube/ioncube_loader_lin_7.0.so /opt/plesk/php/7.0/lib/php/modules/
    sudo service plesk-php70-fpm.service restart
fi

### PHP 7.1
if [ -d "/opt/plesk/php/7.1/" ] 
then
    echo "Installation des ionCube Loader für PHP 7.1"
    sudo cp /usr/local/ioncube/ioncube_loader_lin_7.1.so /opt/plesk/php/7.1/lib/php/modules/
    sudo service plesk-php71-fpm.service restart
fi

### PHP 7.2
if [ -d "/opt/plesk/php/7.2/" ] 
then
    echo "Installation des ionCube Loader für PHP 7.2"
    sudo cp /usr/local/ioncube/ioncube_loader_lin_7.2.so /opt/plesk/php/7.2/lib/php/modules/
    sudo service plesk-php72-fpm.service restart
fi

echo "Remove TEMP Files"
sudo rm -rf ioncube_loaders_lin_x86-64.tar.gz
sudo rm -rf /usr/local/ioncube