#
# Copyright (C) 2021 gSpot (https://github.com/gSpotx2f/luci-app-log)
#
# This is free software, licensed under the MIT License.
#

include $(TOPDIR)/rules.mk

PKG_VERSION:=0.5-1
LUCI_TITLE:=Custom Advanced syslog and kernel log (tail, search, etc)
LUCI_PKGARCH:=all
PKG_LICENSE:=MIT

#include ../../luci.mk
include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
