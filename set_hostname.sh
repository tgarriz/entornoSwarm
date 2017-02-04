#!/bin/bash

echo "maestro" > /etc/hostname
echo "127.0.0.1		localhost" > /etc/hosts
echo "127.0.1.1		master" >> /etc/hosts 
echo "192.168.0.100	maestro" >> /etc/hosts
echo "192.168.0.150	esclavo1" >> /etc/hosts
echo "192.168.0.152	esclavo2" >> /etc/hosts

/etc/init.d/hostname.sh restart


