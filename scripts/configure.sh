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
wget -O eclipse-jee-2018-09-linux-gtk-x86_64.tar.gz http://ftp.fau.de/eclipse/technology/epp/downloads/release/2018-09/R/eclipse-jee-2018-09-linux-gtk-x86_64.tar.gz
tar -xvf eclipse-jee-2018-09-linux-gtk-x86_64.tar.gz
rm -rf eclipse-jee-2018-09-linux-gtk-x86_64.tar.gz

# Maven
apt-get install -y maven

# DBeaver
wget -O dbeaver-ce_latest_amd64.deb https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
dpkg -i dbeaver-ce_latest_amd64.deb
rm -rf dbeaver-ce_latest_amd64.deb

# Assign Loopback IP Address to work with Docker
ifconfig lo:0 alias 192.168.99.1
