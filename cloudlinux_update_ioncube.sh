#!/bin/bash

cd /usr/local
sudo rm -rf ioncube_loaders_lin_x86-64.tar.gz
sudo rm -rf /usr/local/ioncube

echo "Download und entpacken der neusten ionCube Loader Version"
sudo wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
sudo tar xzf ioncube_loaders_lin_x86-64.tar.gz

### PHP 5.2
if [ -d "/opt/alt/php52/" ] 
then
    echo "Installation des ionCube Loader für PHP 5.2"
    sudo cp /usr/local/ioncube/ioncube_loader_lin_5.2.so /opt/alt/php52/usr/lib64/php/ioncube/
fi


### PHP 5.3
if [ -d "/opt/alt/php53/" ] 
then
    echo "Installation des ionCube Loader für PHP 5.3"
    sudo cp /usr/local/ioncube/ioncube_loader_lin_5.3.so /opt/alt/php53/usr/lib64/php/ioncube/
fi

### PHP 5.4
if [ -d "/opt/alt/php54/" ] 
then
    echo "Installation des ionCube Loader für PHP 5.4"
    sudo cp /usr/local/ioncube/ioncube_loader_lin_5.4.so /opt/alt/php54/usr/lib64/php/ioncube/
fi

### PHP 5.5
if [ -d "/opt/alt/php55/" ] 
then
    echo "Installation des ionCube Loader für PHP 5.5"
    sudo cp /usr/local/ioncube/ioncube_loader_lin_5.5.so /opt/alt/php55/usr/lib64/php/ioncube/
fi

### PHP 5.6
if [ -d "/opt/alt/php56/" ] 
then
    echo "Installation des ionCube Loader für PHP 5.6"
    sudo cp /usr/local/ioncube/ioncube_loader_lin_5.6.so /opt/alt/php56/usr/lib64/php/ioncube/
fi

### PHP 7.0
if [ -d "/opt/alt/php70/" ] 
then
    echo "Installation des ionCube Loader für PHP 7.0"
    sudo cp /usr/local/ioncube/ioncube_loader_lin_7.0.so /opt/alt/php70/usr/lib64/php/ioncube/
fi

### PHP 7.1
if [ -d "/opt/alt/php71/" ] 
then
    echo "Installation des ionCube Loader für PHP 7.1"
    sudo cp /usr/local/ioncube/ioncube_loader_lin_7.1.so /opt/alt/php71/usr/lib64/php/ioncube/
fi

### PHP 7.2
if [ -d "/opt/alt/php72/" ] 
then
    echo "Installation des ionCube Loader für PHP 7.2"
    sudo cp /usr/local/ioncube/ioncube_loader_lin_7.2.so /opt/alt/php72/usr/lib64/php/ioncube/
fi

### PHP 7.3
if [ -d "/opt/alt/php73/" ] 
then
    echo "Installation des ionCube Loader für PHP 7.3"
    sudo cp /usr/local/ioncube/ioncube_loader_lin_7.3.so /opt/alt/php73/usr/lib64/php/ioncube/
fi

echo "Restart Apache & NGINX Webserver"
systemctl restart httpd.service

echo "Remove TEMP Files"
sudo rm -rf ioncube_loaders_lin_x86-64.tar.gz
sudo rm -rf /usr/local/ioncube