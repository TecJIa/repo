#!/bin/bash
sudo -i
cd /root
cd ngx_brotli/deps/brotli
mkdir out
cd out
cmake --build . --config Release -j 2 --target brotlienc
