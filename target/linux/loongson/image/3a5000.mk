define Device/generic
  DEVICE_TITLE := Loongson 3A5000 Deice
  DEVICE_PACKAGES += kmod-e1000e kmod-e1000 \
	 kmod-r8169 kmod-fs-vfat
  GRUB2_VARIANT := generic
endef
TARGET_DEVICES += generic
