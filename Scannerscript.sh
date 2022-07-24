#!/bin/bash

sudo arp-scan -l | grep "PCS Systemtechnik GmbH" > arpscan.xml


#echo "Enter the IP address from the Arp Scan :"
#read -r IP

#echo "Enter the port number(s) you want to scan :"
#read -r ports

#nmap -sC -sV -v -T4 "$IP" -p "$ports" -oG nmapscan

nmap -sC -sV -v -T4 -iL arpscan.xml -p 1-65535