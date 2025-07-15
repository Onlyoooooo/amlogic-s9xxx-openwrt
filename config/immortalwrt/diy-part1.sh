#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/immortalwrt/immortalwrt / Branch: master
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '1i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '1i src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main' feeds.conf.default

# Add luci-app-poweroffdevice
rm -rf package/luci-app-poweroffdevice
git clone https://github.com/sirpdboy/luci-app-poweroffdevice package/luci-app-poweroffdevice

# Add luci-app-passwall2
rm -rf package/luci-app-passwall2
git clone https://github.com/xiaorouji/openwrt-passwall2.git package/luci-app-passwall2

# other
# rm -rf package/emortal/{autosamba,ipv6-helper}


