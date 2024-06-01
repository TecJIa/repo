#!/bin/bash
sudo -i
nginx -t
nginx -s reload
sleep 5
curl -a http://localhost/repo/

