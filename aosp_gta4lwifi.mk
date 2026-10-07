# PixelExperience Plus product for gta4lwifi (SM-T500, Wi-Fi).
# The same hardware as gta4l (SM-T505) without the modem.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# Wi-Fi model: base product without telephony.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Hardware (gta4l-common through the gta4lwifi device.mk, without RIL)
$(call inherit-product, device/samsung/gta4lwifi/device.mk)

# PixelExperience: Wi-Fi tablet, so tablet_wifionly (no telephony stack).
$(call inherit-product, vendor/aosp/config/common_full_tablet_wifionly.mk)

# GApps (part of PE)
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 800

PRODUCT_DEVICE := gta4lwifi
PRODUCT_NAME := aosp_gta4lwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T500
PRODUCT_MANUFACTURER := samsung
PRODUCT_SYSTEM_NAME := gta4wifixx
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# No stock SM-T500 dump is at hand, so the build fingerprint is the SM-T505 one.
# Replace it with the gta4wifixx/T500XXS... build once a T500 dump is available.
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=gta4lxx \
    PRIVATE_BUILD_DESC="gta4lxx-user 12 SP1A.210812.016 T505XXS6CWI2 release-keys"
BUILD_FINGERPRINT := "samsung/gta4lxx/qssi:12/SP1A.210812.016/T505XXS6CWI2:user/release-keys"
