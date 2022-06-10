# Copyright 2020-2021 Rafał Wabik - IceG - From eko.one.pl forum
# Licensed to the GNU General Public License v3.0.

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-tn-logview (modded)
LUCI_TITLE:=Custom Advanced syslog and kernel log (tail, search, etc)
LUCI_PKGARCH:=all
LUCI_DEPENDS:=+luabitop

define Package/luci-app-tn-logview/postinst
#!/bin/sh
rm -rf /tmp/luci-indexcache
rm -rf /tmp/luci-modulecache/
exit 0
endef

define Package/$(PKG_NAME)/config
# shown in make menuconfig <Help>
help
	$(LUCI_TITLE)
	Version: $(PKG_VERSION)-$(PKG_RELEASE)
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
