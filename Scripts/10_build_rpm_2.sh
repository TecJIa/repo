#!/bin/bash
sudo -i
cd /root/rpmbuild/RPMS/x86_64
yum -y localinstall *.rpm
