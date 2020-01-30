#
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from UMIDIGI A5 Pro device
$(call inherit-product, device/umidigi/breeze/device.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_breeze
PRODUCT_DEVICE := breeze
PRODUCT_BRAND := UMIDIGI
PRODUCT_MODEL := A5_Pro
PRODUCT_MANUFACTURER := UMIDIGI

# Product characteristics
PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

BUILD_FINGERPRINT := UMIDIGI/A5_Pro/A5_Pro:9/PPR1.180610.011/1559618636:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="A5_Pro-user 9 PPR1.180610.011 1559618636 release-keys"

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-agold
