# Inherit from SPRD common
$(call inherit-product, hardware/sprd/scx30g2_v2/scx30g2_v2.mk)

# Common overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/gtexs-common/overlay

# Init scripts
PRODUCT_COPY_FILES += \
    device/samsung/gtexs-common/rootdir/init.sc8830.rc:root/init.sc8830.rc \
    device/samsung/gtexs-common/rootdir/init.common.usb.rc:root/init.usb.rc \
    device/samsung/gtexs-common/rootdir/fstab.sc8830:root/fstab.sc8830

# Keylayouts
PRODUCT_COPY_FILES += \
    device/samsung/gtexs-common/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl

# Media config
PRODUCT_COPY_FILES += \
    device/samsung/gtexs-common/configs/media_profiles.xml:system/etc/media_profiles.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Device-specific packages
PRODUCT_PACKAGES += \
    audio.primary.sc8830 \
    gralloc.sc8830 \
    hwcomposer.sc8830 \
    libion \
    sensors.sc8830

# Power HAL
PRODUCT_PACKAGES += \
    power.sc8830
