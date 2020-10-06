#
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from Ulefone Armor X5 device
$(call inherit-product, device/ulefone/bretzel/device.mk)

# Inherit some common RR stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)
TARGET_UNLOCK_FACE := true
TARGET_BOOT_ANIMATION_RES := 720
TARGET_GAPPS_ARCH := arm64

# Inherit Google Play System Update stuff
$(call inherit-product-if-exists, vendor/google/psu/google-psu.mk)

# Inherit Gapps
$(call inherit-product, vendor/gapps/gapps.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_RELEASE_NAME := Ulefone Armor X5
PRODUCT_BRAND := Ulefone
PRODUCT_DEVICE := bretzel
PRODUCT_MANUFACTURER := Ulefone
PRODUCT_MODEL := Armor X5
PRODUCT_NAME := rr_bretzel

PRODUCT_GMS_CLIENTID_BASE := android-gotron

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="bretzel" \
    PRODUCT_NAME="bretzel" \
    PRIVATE_BUILD_DESC="full_k63v2_64_bsp-user 9 PPR1.180610.011 1587533053 release-keys"

BUILD_FINGERPRINT := "google/coral/coral:10/QQ3A.200705.002/6506677:user/release-keys"
