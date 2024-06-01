#!/bin/bash
sudo -i
echo "[otus]" > "/etc/yum.repos.d/otus.repo"
echo "name=otus-linux" >> "/etc/yum.repos.d/otus.repo"
echo "baseurl=http://localhost/repo" >> "/etc/yum.repos.d/otus.repo"
echo "gpgcheck=0" >> "/etc/yum.repos.d/otus.repo"
echo "enabled=1" >> "/etc/yum.repos.d/otus.repo"
