#!/bin/bash

# Update Packages
apt-get update -y

# Net Tools
apt-get install -y net-tools

# Git
apt-get install -y git

# Docker
apt-get install -y docker.io
apt-get install -y docker-compose

# VSCode
wget -O code_1.28.2-1539735992_amd64.deb https://go.microsoft.com/fwlink/?LinkID=760868
dpkg -i code_1.28.2-1539735992_amd64.deb
apt-get install -y -f
rm -rf code_1.28.2-1539735992_amd64.deb

# Java
apt-get install -y openjdk-11-jdk

# Eclipse
wget -O spring-tool-suite-3.9.6.RELEASE-e4.9.0-linux-gtk-x86_64.tar.gz https://download.springsource.com/release/STS/3.9.6.RELEASE/dist/e4.9/spring-tool-suite-3.9.6.RELEASE-e4.9.0-linux-gtk-x86_64.tar.gz
tar -xvf spring-tool-suite-3.9.6.RELEASE-e4.9.0-linux-gtk-x86_64.tar.gz
rm -rf spring-tool-suite-3.9.6.RELEASE-e4.9.0-linux-gtk-x86_64.tar.gz

# Maven
apt-get install -y maven

# DBeaver
wget -O dbeaver-ce_latest_amd64.deb https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
dpkg -i dbeaver-ce_latest_amd64.deb
rm -rf dbeaver-ce_latest_amd64.deb

# Assign Loopback IP Address to work with Docker
ifconfig lo:0 alias 192.168.99.1

chown vagrant /home/vagrant/workspace

echo "192.168.99.1 mysql" >> /etc/hosts
