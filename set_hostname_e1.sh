#!/bin/bash

echo "esclavo1" > /etc/hostname
echo "127.0.0.1		localhost" > /etc/hosts
echo "127.0.1.1		esclavo1" >> /etc/hosts 
echo "192.168.99.100	maestro" >> /etc/hosts
echo "192.168.99.150	esclavo1" >> /etc/hosts
echo "192.168.99.152	esclavo2" >> /etc/hosts
/etc/init.d/hostname.sh restart


