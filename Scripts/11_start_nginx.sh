#!/bin/bash
sudo -i
cd /root/rpmbuild/RPMS/x86_64
systemctl start nginx
systemctl status nginx
