#!/bin/bash

apt-get update
apt-get install -y apt-transport-https \
	ca-certificates \
        software-properties-common \
	curl \
	gnupg2 \
	vim \
	nmap \
	tree
		    
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get -y install docker-ce
curl -L https://github.com/docker/compose/releases/download/1.14.0-rc2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
apt-get -y upgrade
