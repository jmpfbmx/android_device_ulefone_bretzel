#
# Copyright (C) 2020 The Android Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME :=  Ulefone Armor X5
PRODUCT_BRAND := Ulefone
PRODUCT_DEVICE := bretzel
PRODUCT_MANUFACTURER := Ulefone
PRODUCT_MODEL := Armor X5
PRODUCT_NAME := omni_bretzel

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Ulefone/Armor_X5_EEA/Armor_X5:9/PPR1.180610.011/1587533053:user/release-keys" \
    PRIVATE_BUILD_DESC="full_k63v2_64_bsp-user 9 PPR1.180610.011 1587533053 release-keys"

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.allow.mock.location=0

PRODUCT_PROPERTY_OVERRIDES += \
    sys.usb.ffs.aio_compat=true
