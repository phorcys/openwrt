#
# Copyright (C) 2009 OpenWrt.org
#

SUBTARGET:=generic
BOARDNAME:=Loongson LoongArch generic boards
FEATURES+=ramdisk pci rtc usb usb3 gpio
ARCH=loongarch64
CPU_TYPE:=generic

define Target/Description
	Build firmware images for Loongson LoongArch generic boards.
endef
