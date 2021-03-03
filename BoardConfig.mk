#
# Copyright (C) 2019 The Android Open-Source Project
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

# Basics & Paths
BOARD_VENDOR := ulefone
LOCAL_PATH := device/ulefone/bretzel

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6763
TARGET_NO_BOOTLOADER := true

# Board Platform
TARGET_BOARD_PLATFORM := mt6763

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := armv8-a
TARGET_USES_64_BIT_BINDER := true

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x14f88000
BOARD_KERNEL_TAGS_OFFSET := 0x13f88000
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_BOOTIMG_HEADER_VERSION := 1
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/Image.gz-dtb
BOARD_PREBUILT_DTBOIMAGE := $(LOCAL_PATH)/prebuilt/dtbo.img
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# System.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Assert
TARGET_OTA_ASSERT_DEVICE := bretzel,Armor_X5,Armor_X5_EEA

#Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := 838860800
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072 # BOARD_KERNEL_PAGESIZE * 64

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_USERIMAGES_USE_F2FS := true

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_AVB_ENABLE := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_CUSTOM_BATTERY_PATH := "/sys/class/power_supply/battery"
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"

# Excludes
TW_EXCLUDE_TWRPAPP := true

# Resolution
TW_THEME := portrait_hdpi
DEVICE_SCREEN_WIDTH := 720
DEVICE_SCREEN_HEIGHT := 1440

# Display
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_NO_SCREEN_BLANK := true
TW_NO_BATT_PERCENT := false
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_USE_TOOLBOX := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# Crypto
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/bootdevice/by-name/userdata"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,barrier=0,data=ordered"

# Storage
TW_HAS_MTP := true
TW_MTP_DEVICE := /dev/mtp_usb
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#TW_NO_REBOOT_BOOTLOADER := false
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_NO_USB_STORAGE := false
TW_INPUT_BLACKLIST := "hbtp_vm"
HAVE_SELINUX := true

# Languages
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en

TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

# If build on minimal-manifest sources
ALLOW_MISSING_DEPENDENCIES=true
