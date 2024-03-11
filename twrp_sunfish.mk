#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from sunfish device
$(call inherit-product, device/google/sunfish/device.mk)

PRODUCT_DEVICE := sunfish
PRODUCT_NAME := twrp_sunfish
PRODUCT_BRAND := google
PRODUCT_MODEL := mainline
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sunfish-user 13 TQ3A.230805.001.S1 10786265 release-keys"

BUILD_FINGERPRINT := google/sunfish/sunfish:13/TQ3A.230805.001.S1/10786265:user/release-keys
