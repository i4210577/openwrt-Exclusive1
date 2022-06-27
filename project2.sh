#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.15.1/g' package/base-files/files/bin/config_generate
# sed -i 's/bootstrap/argon-18.06/g' ./feeds/luci/collections/luci/Makefile
rm -rf ./package/ctcgfw/luci-app-adguardhome
rm -rf ./package/ctcgfw/luci-theme-argon-mod
rm -rf ./package/ctcgfw/luci-app-unblockneteasemusic
rm -rf ./package/ctcgfw/luci-app-unblockneteasemusic-mini
rm -rf ./package/lean/luci-theme-argon
rm -rf ./package/lean/luci-app-unblockneteasemusic-go
# rm -rf ./package/lean/luci-app-qbittorrent
rm -rf ./package/ntlf9t/AdGuardHome
rm -rf ./package/ntlf9t/luci-app-smartdns
rm -rf ./package/ntlf9t/smartdns
rm -rf ./package/ntlf9t/openwrt-udp2raw
rm -rf ./package/ntlf9t/dnscrypt-proxy-full
# rm -rf ./package/openwrt-passwall/v2ray-geodata
# rm -rf ./package/ssr/v2ray-geodata
# rm -rf ./package/diy-ziyong/adguardhome
rm -rf ./feeds/packages/net/https-dns-proxy
# curl -fsSL  https://raw.githubusercontent.com/Lienol/openwrt-packages/dev-19.07/net/https-dns-proxy/files/https-dns-proxy.init > ./feeds/packages/net/https-dns-proxy/files/https-dns-proxy.init
# wget https://raw.githubusercontent.com/Lienol/openwrt-packages/19.07/net/https-dns-proxy/files/https-dns-proxy.config -O ./feeds/packages/net/https-dns-proxy/files/https-dns-proxy.config
# wget https://raw.githubusercontent.com/Lienol/openwrt-packages/19.07/net/https-dns-proxy/files/https-dns-proxy.init -O ./feeds/packages/net/https-dns-proxy/files/https-dns-proxy.init
svn co https://github.com/Lienol/openwrt-packages/trunk/net/https-dns-proxy feeds/packages/net/https-dns-proxy
# curl -fsSL  https://raw.githubusercontent.com/coolsnowwolf/packages/master/net/adguardhome/Makefile > ./package/diy-ziyong/adguardhome/Makefile
