#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-design/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

rm -rf feeds/luci/applications/luci-app-adguardhome
rm -rf feeds/packages/net/adguardhome

git clone --depth=1 https://github.com/fanchmwrt/fanchmwrt-packages fanchmwrt-packages
cp -rf fanchmwrt-packages/luci-app-fwx-app-center package/luci-app-fwx-app-center
cp -rf fanchmwrt-packages/luci-app-fwx-appfilter package/luci-app-fwx-appfilter
cp -rf fanchmwrt-packages/luci-app-fwx-dashboard-setting package/luci-app-fwx-dashboard-setting
cp -rf fanchmwrt-packages/luci-app-fwx-dashboard package/luci-app-fwx-dashboard
cp -rf fanchmwrt-packages/luci-app-fwx-feature package/luci-app-fwx-feature
cp -rf fanchmwrt-packages/luci-app-fwx-mac-blacklist package/luci-app-fwx-mac-blacklist
cp -rf fanchmwrt-packages/luci-app-fwx-macfilter package/luci-app-fwx-macfilter
cp -rf fanchmwrt-packages/luci-app-fwx-network package/luci-app-fwx-network
cp -rf fanchmwrt-packages/luci-app-fwx-record-whitelist package/luci-app-fwx-record-whitelist
cp -rf fanchmwrt-packages/luci-app-fwx-record package/luci-app-fwx-record
cp -rf fanchmwrt-packages/luci-app-fwx-resources package/luci-app-fwx-resources
cp -rf fanchmwrt-packages/luci-app-fwx-session-stat package/luci-app-fwx-session-stat
cp -rf fanchmwrt-packages/luci-app-fwx-system package/luci-app-fwx-system
cp -rf fanchmwrt-packages/luci-app-fwx-user-record package/luci-app-fwx-user-record
cp -rf fanchmwrt-packages/luci-app-fwx-user package/luci-app-fwx-user
rm -rf fanchmwrt-packages

git clone --depth=1 https://github.com/kenzok8/small-package.git kenzok8-packages
cp -rf kenzok8-packages/ddnsto package/ddnsto
cp -rf kenzok8-packages/luci-app-ddnsto package/luci-app-ddnsto
cp -rf kenzok8-packages/wrtbwmon package/wrtbwmon
cp -rf kenzok8-packages/luci-app-wrtbwmon package/luci-app-wrtbwmon
cp -rf kenzok8-packages/adguardhome package/adguardhome
cp -rf kenzok8-packages/luci-app-adguardhome package/luci-app-adguardhome
cp -rf kenzok8-packages/fastnet package/fastnet
cp -rf kenzok8-packages/luci-app-fastnet package/luci-app-fastnet
cp -rf kenzok8-packages/linkease package/linkease
cp -rf kenzok8-packages/linkmount package/linkmount
cp -rf kenzok8-packages/luci-app-linkease package/luci-app-linkease
rm -rf kenzok8-packages

git clone --depth=1 -b openwrt-23.05 https://github.com/coolsnowwolf/luci package/luci-app-accesscontrol

git clone --depth=1 https://github.com/vernesong/OpenClash.git OpenClash-packages
cp -rf OpenClash-packages/luci-app-openclash package/luci-app-openclash
rm -rf OpenClash-packages



