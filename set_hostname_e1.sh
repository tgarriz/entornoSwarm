#!/bin/bash

#echo "esclavo1" > /etc/hostname
echo "127.0.0.1		localhost" > /etc/hosts
echo "127.0.1.1		esclavo1" >> /etc/hosts 
echo "10.10.0.250	maestro" >> /etc/hosts
echo "10.10.0.251	esclavo1" >> /etc/hosts
echo "10.10.0.252	esclavo2" >> /etc/hosts


