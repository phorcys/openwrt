#
# Copyright (C) 2008-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

ARCH:=loongarch64
BOARD:=loongson
BOARDNAME:=Loongson LoongArch Board
SUBTARGETS:=3a5000
FEATURES:=gpio
MAINTAINER:=phorcys <phorcys@126.com>

KERNEL_PATCHVER:=5.14
LINUX_VERSION=5.14.0
LINUX_VERSION-5.14 = .0
LINUX_KERNEL_HASH-5.14.0 =e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855


include $(INCLUDE_DIR)/target.mk
DEFAULT_PACKAGES +=  swconfig

$(eval $(call BuildTarget))
