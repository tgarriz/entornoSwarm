#!/bin/bash

apt-get update
apt-get install -y curl vim nmap tree
apt-get install -y apt-transport-https \
                       ca-certificates \
                       software-properties-common
curl -fsSL https://yum.dockerproject.org/gpg | apt-key add -
apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D
add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       debian-$(lsb_release -cs) \
       main"
apt-get update
apt-get -y install docker-engine
curl -L "https://github.com/docker/compose/releases/download/1.11.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
apt-get -y upgrade
