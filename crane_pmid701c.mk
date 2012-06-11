# crane pmid701c product config

$(call inherit-product, device/softwinner/crane-common/ProductCommon.mk)

DEVICE_PACKAGE_OVERLAYS := device/softwinner/crane-pmid701c/overlay

PRODUCT_COPY_FILES += \
#	device/softwinner/crane-pmid701c/kernel:kernel \
#	device/softwinner/crane-pmid701c/recovery.fstab:recovery.fstab

PRODUCT_COPY_FILES += \
	device/softwinner/crane-pmid701c/ueventd.sun4i.rc:root/ueventd.sun4i.rc \
	device/softwinner/crane-pmid701c/init.sun4i.rc:root/init.sun4i.rc \
	device/softwinner/crane-pmid701c/init.sun4i.usb.rc:root/init.sun4i.usb.rc \
	device/softwinner/crane-pmid701c/media_profiles.xml:system/etc/media_profiles.xml \
	
#input device config
PRODUCT_COPY_FILES += \
	device/softwinner/crane-pmid701c/sun4i-keyboard.kl:system/usr/keylayout/sun4i-keyboard.kl \
	device/softwinner/crane-pmid701c/axp20-supplyer.kl:system/usr/keylayout/axp20-supplyer.kl \
#	device/softwinner/crane-pmid701c/gt80x.idc:system/usr/idc/gt80x.idc

#logos and boot animation
PRODUCT_COPY_FILES += \
#	device/softwinner/crane-pmid701c/initlogo.rle:root/initlogo.rle \
	device/softwinner/crane-pmid701c/media/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES += \
	device/softwinner/crane-pmid701c/vold.fstab:system/etc/vold.fstab

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mass_storage,adb \
	ro.sf.lcd_density=120 \
	ro.product.firmware=0.6

$(call inherit-product-if-exists, device/softwinner/crane-pmid701c/modules/modules.mk)

PRODUCT_CHARACTERISTICS := tablet

# Overrides
PRODUCT_BRAND  := softwinners
PRODUCT_NAME   := crane_pmid701c
PRODUCT_DEVICE := crane-pmid701c
PRODUCT_MODEL  := PMID701c

