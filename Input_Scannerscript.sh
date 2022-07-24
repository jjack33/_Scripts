#!/bin/bash

sudo arp-scan -l | grep "PCS Systemtechnik GmbH"
wait 15

echo "Enter the IP address from the Arp Scan :"
read -r IP

echo "Enter the port number(s) you want to scan :"
read -r ports

nmap -sC -sV -v -T4 "$IP" -p "$ports" -oG nmapscan