#!/bin/bash

#Install docker
sudo apt-get update
sudo curl -sSL https://get.docker.com/ | sudo sh

#Install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.5.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

#Make worker folder
mkdir /home/vagrant/www
chown -R vagrant: /home/vagrant/www
chmod -R 777 /home/vagrant/www

#Copy current source to worker folder
cp -R /vagrant/Symfony2 /home/vagrant/www/
chmod -R 777 /home/vagrant/www
chown -R vagrant: /home/vagrant/www

#Execute docker-compose
cd /vagrant/VM/script
docker-compose up -d