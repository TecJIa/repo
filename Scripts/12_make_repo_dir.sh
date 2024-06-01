#!/bin/bash
sudo -i
mkdir /usr/share/nginx/html/repo
cp /root/rpmbuild/RPMS/x86_64/*.rpm /usr/share/nginx/html/repo/
createrepo /usr/share/nginx/html/repo/
