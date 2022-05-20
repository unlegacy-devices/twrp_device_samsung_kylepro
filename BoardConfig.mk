#
# Copyright (C) 2022 TeamWin Recovery Project
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

LOCAL_PATH := device/samsung/kylepro

# Platform
TARGET_ARCH                  := arm
TARGET_BOARD_PLATFORM        := hawaii
TARGET_CPU_ABI               := armeabi-v7a
TARGET_CPU_ABI2              := armeabi
TARGET_ARCH_VARIANT          := armv7-a-neon
TARGET_CPU_VARIANT           := cortex-a9
TARGET_BOOTLOADER_BOARD_NAME := hawaii
BOARD_VENDOR                 := samsung

# Bootloader
TW_HAS_DOWNLOAD_MODE    := true
TW_NO_REBOOT_BOOTLOADER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := kylepro,kyleproxx,kyleprouh,kyleprodu,kyleprodv,kyleprojk,kyleproub,kyleprods,kyleprodsxx,kyleprodsub,GT-S7580

# Filesystem
#fake values for recovery partition to workaround TWRP 3.6.1-9
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10191424
BOARD_FLASH_BLOCK_SIZE             := 262144
TARGET_USERIMAGES_USE_EXT4         := true
BOARD_USES_MMCUTILS                := true
BOARD_SUPPRESS_EMMC_WIPE           := true
BOARD_SUPPRESS_SECURE_ERASE        := true
BOARD_HAS_NO_REAL_SDCARD           := true
RECOVERY_SDCARD_ON_DATA            := true
BOARD_HAS_NO_MISC_PARTITION        := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyFIQ0 no_console_suspend
BOARD_PAGE_SIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_PREBUILT_KERNEL := device/samsung/kylepro/prebuilt/zImage
# Recovery
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
BOARD_SUPPRESS_EMMC_WIPE := true

# Display & Graphics
TW_THEME := portrait_mdpi

# TWRP
DEVICE_RESOLUTION                           := 480x800
TARGET_USE_CUSTOM_LUN_FILE_PATH             := /sys/class/android_usb/android0/f_mass_storage/lun/file
TARGET_USERIMAGES_USE_EXT4                  := true
TARGET_USERIMAGES_USE_F2FS                  := true
TARGET_RECOVERY_PIXEL_FORMAT                := BGRA_8888
TW_MAX_BRIGHTNESS                           := 255
TW_CUSTOM_BATTERY_PATH                      := /sys/class/power_supply/battery
TW_BRIGHTNESS_PATH                          := /sys/class/backlight/panel/brightness
RECOVERY_SDCARD_ON_DATA                     := true
TW_NO_REBOOT_BOOTLOADER                     := true
RECOVERY_GRAPHICS_USE_LINELENGTH            := true
TW_INTERNAL_STORAGE_PATH                    := /data/media
TW_INTERNAL_STORAGE_MOUNT_POINT             := sdcard
TW_EXTERNAL_STORAGE_PATH                    := /external_sd
TW_EXTERNAL_STORAGE_MOUNT_POINT             := external_sd
TW_DEFAULT_EXTERNAL_STORAGE                 := true
TW_EXCLUDE_SUPERSU                          := true
TW_NO_CPU_TEMP                              := true
BOARD_HAS_NO_REAL_SDCARD                    := true
HAVE_SELINUX                                := true
