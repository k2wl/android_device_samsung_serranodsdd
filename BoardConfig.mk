# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

TARGET_SPECIFIC_HEADER_PATH := device/samsung/serranodsdd/include

# Assert
TARGET_OTA_ASSERT_DEVICE := serranods,serranodsdd,serranodsub,serranodsxx,GT-I9192

BOARD_VENDOR := samsung

# Bootloader
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_CPU_VARIANT := krait

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon

TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=22 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1
BOARD_KERNEL_BASE := 0x80200000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_SOURCE := kernel/samsung/msm8930-common
TARGET_KERNEL_CONFIG := cyanogen_serrano_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8930_serrano_eur_3g_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/serranodsdd/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Camera
TARGET_PROVIDES_CAMERA_HAL := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Charger
BOARD_BATTERY_DEVICE_NAME := "battery"
BOARD_CHARGING_CMDLINE_NAME := "androidboot.bootchg"
BOARD_CHARGING_CMDLINE_VALUE := "true"

# Display
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Renderscript
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Shader cache config options
# Maximum size of the  GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_GENERIC_AUDIO := false

# FM
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
TARGET_FM_LEGACY_PATCHLOADER := true

# Allow suspend in charge mode
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Graphics
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true

# Healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.msm

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# Camera
TARGET_NEED_CAMERA_ZSL := true
TARGET_NEED_FFC_PICTURE_FIXUP := true
TARGET_NEED_FFC_VIDEO_FIXUP := true
TARGET_NEED_DISABLE_FACE_DETECTION := true
TARGET_NEED_DISABLE_FACE_DETECTION_BOTH_CAMERAS := true

# RIL
COMMON_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING
BOARD_RIL_CLASS := ../../../device/samsung/serranodsdd/ril/

# CMHW
BOARD_HARDWARE_CLASS := device/samsung/serranodsdd/cmhw
BOARD_HARDWARE_CLASS += hardware/samsung/cmhw

# BLN
BOARD_HAVE_GENERIC_BLN := true

# Disable Block Based OTA
BLOCK_BASED_OTA=false

# Wifi driver
BOARD_HAS_QCOM_WLAN              := true
BOARD_WLAN_DEVICE                := qcwcn
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
TARGET_PROVIDES_WCNSS_QMI        := true
TARGET_USES_QCOM_WCNSS_QMI       := true
TARGET_USES_WCNSS_CTRL           := true
WPA_SUPPLICANT_VERSION           := VER_0_8_X
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/serranodsdd/rootdir/fstab.qcom
TARGET_RECOVERY_DEVICE_DIRS += device/samsung/serranodsdd
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_DOWNLOAD_MODE := true

# Reduce space taken by the journal
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5821660160
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072
