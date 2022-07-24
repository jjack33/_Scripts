#!/usr/bin/python

import socket

s = socket
        
s.connect(('192.168.1.246', 22))
        
answer = s.recv(1024)
        
print(answer)
        
s.close()