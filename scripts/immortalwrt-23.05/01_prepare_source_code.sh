#!/bin/bash

. ./scripts/funcations.sh

# Clone source code
# latest_release="$(curl -s https://github.com/immortalwrt/immortalwrt/tags | grep -Eo "v[0-9\.]+-*r*c*[0-9]*.tar.gz" | sed -n '/23.05/p' | sed -n 1p | sed 's/.tar.gz//g')"
# clone_repo $immortalwrt_repo ${latest_release} openwrt &

# clone_repo $immortalwrt_repo 23.05.2 openwrt &

wait

# Add the default password for the 'root' user（Change the empty password to 'password'）
sed -i 's/root:::0:99999:7:::/root:$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.::0:99999:7:::/g' openwrt/package/base-files/files/etc/shadow
# Modify default IP (FROM 192.168.1.1 CHANGE TO 192.168.1.3 )
sed -i 's/192.168.1.1/192.168.1.3/g' openwrt/package/base-files/files/bin/config_generate

exit 0
