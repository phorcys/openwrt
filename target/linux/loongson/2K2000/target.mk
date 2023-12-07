#
# Copyright (C) 2009 OpenWrt.org
#

SUBTARGET:=2K2000
BOARDNAME:=Loongson 2K2000 based boards
FEATURES+=ramdisk pci rtc usb usb3 gpio
ARCH=loongarch64
CPU_TYPE:=generic

define Target/Description
	Build firmware images for Loongson 2K2000 based boards.
endef
