#!/bin/bash
sudo -i
dnf install sed
sed -i "/-with-debug/a\\  --add-module=/root/ngx_brotli \\\\" "/root/rpmbuild/SPECS/nginx.spec"
