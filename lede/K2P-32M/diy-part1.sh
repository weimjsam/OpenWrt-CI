#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
cd /opt/openwrt
##### K2P-32M修改编译文件 ######
sed -i 's/"Phicomm K2P";/"Phicomm K2P-32M";/g' /opt/openwrt/target/linux/ramips/dts/mt7621_phicomm_k2p.dts
sed -i '/spi-max-frequency/a\\t\tbroken-flash-reset;' /opt/openwrt/target/linux/ramips/dts/mt7621_phicomm_k2p.dts
sed -i 's/<0xa0000 0xf60000>/<0xa0000 0x1fb0000>/g' /opt/openwrt/target/linux/ramips/dts/mt7621_phicomm_k2p.dts
sed -i 's/15744k/32448k/g' /opt/openwrt/target/linux/ramips/image/mt7621.mk

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

##### Add Custom feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#echo 'src-git OpenClash https://github.com/vernesong/OpenClash' >>'feeds.conf.defaul'
##### clash备用链接
#echo 'src-git OpenClash https://github.com/vernesong/OpenClash.git' >> 'feeds.conf.default'
##### Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf #delete original argon theme
echo 'src-git ArgonTheme https://github.com/jerrykuku/luci-theme-argon.git' >> 'feeds.conf.default' #repleace with JerryKuKu’s Argon Theme
echo 'src-git ArgonThemeConfig https://github.com/jerrykuku/luci-app-argon-config.git' >> 'feeds.conf.default' #add JerryKuKu’s Argon Config Feature
#cd package/lean  
##### rm -rf luci-theme-argon  #删除原Argon主题
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  #加入JerryKuKu’s Argon
#git clone https://github.com/jerrykuku/luci-app-argon-config #加入JerryKuKu’s Argon Config
#cd ..
#cd ..

# Add a feed source
#echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small-package' >>feeds.conf.default
#echo 'src-git haibo https://github.com/haiibo/openwrt-packages' >>feeds.conf.default
#echo 'src-git liuran001 https://github.com/liuran001/openwrt-packages' >>feeds.conf.default
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
