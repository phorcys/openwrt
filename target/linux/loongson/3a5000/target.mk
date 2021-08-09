#
# Copyright (C) 2009 OpenWrt.org
#

SUBTARGET:=3a5000
BOARDNAME:=Loongson 3A5000 based boards
FEATURES+=nand ramdisk rtc usb minor
ARCH=loongarch64
CPU_TYPE:=gs464v

define Target/Description
	Build firmware images for Loongson 3A5000 based boards.
endef

