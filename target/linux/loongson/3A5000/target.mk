#
# Copyright (C) 2009 OpenWrt.org
#

SUBTARGET:=3A5000
BOARDNAME:=Loongson 3A5000 based boards
FEATURES+=ramdisk pci rtc usb usb3 gpio
ARCH=loongarch64
CPU_TYPE:=la464

define Target/Description
	Build firmware images for Loongson 3A5000 based boards.
endef
