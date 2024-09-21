#!/bin/bash

. ./scripts/funcations.sh
clone_repo $lede_repo master openwrt &

wait

# Modify default IP (FROM 192.168.1.1 CHANGE TO 192.168.1.3 )
sed -i 's/192.168.1.1/192.168.1.3/g' openwrt/package/base-files/files/bin/config_generate

exit 0
