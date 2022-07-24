#!/usr/bin/python3

import ftplib

def anonLogin(hostname):
    try:
            ftp = ftplib.FTP(hostname)
            ftp.login('anonymous','anonymous')
            print ("[*] " + hostname + " FTP Anonymous Logon Succeeded.")
            ftp.quit
    except Exception as e:
            print ("[*] " + hostname + " FTP Anonymous Logon Failed.")

host = input("Enter the IP Address: ")
anonLogin(host)
