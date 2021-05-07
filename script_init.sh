#!/bin/bash
echo "Hello" > index.html

sudo apt install busybox 

nohup /bin/busybox httpd -f -p 8080 &