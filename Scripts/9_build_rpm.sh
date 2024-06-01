#!/bin/bash
sudo -i
cd /root/rpmbuild/SPECS/
rpmbuild -ba nginx.spec -D 'debug_package %{nil}'
cp /root/rpmbuild/RPMS/noarch/* ~/rpmbuild/RPMS/x86_64/
