#!/bin/bash
sudo -i
yum repolist enabled | grep otus
cd /usr/share/nginx/html/repo/
wget https://repo.percona.com/yum/percona-release-latest.noarch.rpm
sleep 5
createrepo /usr/share/nginx/html/repo/
sleep 5
yum makecache
yum list | grep otus
sleep 5
yum install -y percona-release.noarch
