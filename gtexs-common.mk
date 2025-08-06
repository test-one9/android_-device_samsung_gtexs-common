# Inherit common product
$(call inherit-product, device/samsung/gtexs-common/device-common.mk)

# Inherit LineageOS common tablet configuration
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

# Product definitions
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := Galaxy Tab A 7.0 (2016)

# Common properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    ro.ril.telephony.mqanelements=6 \
    persist.radio.add_power_save=1
