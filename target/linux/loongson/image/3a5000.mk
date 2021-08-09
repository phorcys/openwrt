#
# Loongson Profiles
#



define Device/3a5000
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  KERNEL_SIZE := 16384k
  IMAGE_SIZE := 28672k
  UBINIZE_OPTS := -E 5
  IMAGES += kernel.bin rootfs.bin
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
  IMAGE/kernel.bin := append-kernel
  IMAGE/rootfs.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
  DEVICE_TITLE := Loongson 3A5000
  DEVICE_PACKAGES := \
	 wpad-basic
endef
TARGET_DEVICES += 3a5000


