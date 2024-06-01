#!/bin/bash
sudo -i
line_number=$(grep -n "root  " "/etc/nginx/nginx.conf" | head -n1 | cut -d: -f1)
sed -i "${line_number}a\\        index index.html index.htm;" "/etc/nginx/nginx.conf"
sed -i "/index index.html /a\\        autoindex on;" "/etc/nginx/nginx.conf"

