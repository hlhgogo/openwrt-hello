include $(TOPDIR)/rules.mk

PKG_NAME:=openwrt-hello
PKG_VERSION:=1.0.0
#PKG_BUILD_DIR = $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/openwrt-hello
	SECTION:=net
	CATEGORY:=Network
	SUBMENU:=openwrt-hello
	TITLE:=openwrt-hello
	VERSION:=$(PKG_VERSION)
endef

define Package/openwrt-hello/description
	openwrt-hello description
endef

# 编译前的准备
define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Compile/Default
endef

Build/Compile = $(Build/Compile/Default)

# 定义hello_world安装什么
define Package/openwrt-hello/install
    $(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) files/x86-64/openwrt-hello $(1)/usr/bin/openwrt-hello
endef

$(eval $(call BuildPackage,$(PKG_NAME)))