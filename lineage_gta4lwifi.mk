#
# Copyright (C) 2020-2023 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# Wi-Fi model: no telephony.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from gta4lwifi device (gta4l-common without RIL)
$(call inherit-product, device/samsung/gta4lwifi/device.mk)

# Inherit some common Lineage stuff (Wi-Fi tablet, no telephony stack).
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gta4lwifi
PRODUCT_NAME := lineage_gta4lwifi
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
