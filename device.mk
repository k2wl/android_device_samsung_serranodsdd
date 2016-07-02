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

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/serranodsdd/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \

# Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/serranodsdd/init.carrier.rc:root/init.carrier.rc \
    device/samsung/serranodsdd/init.class_main.sh:root/init.class_main.sh \

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    
# Audio configuration
PRODUCT_COPY_FILES += \
    device/samsung/serranodsdd/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    device/samsung/serranodsdd/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/samsung/serranodsdd/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/samsung/serranodsdd/audio/mixer_paths.xml:system/etc/mixer_paths.xml \

# Media Profile
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    device/samsung/serranodsdd/media/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/serranodsdd/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    device/samsung/serranodsdd/media/media_codecs_google_performance.xml:system/etc/media_codecs_google_performance.xml \
    device/samsung/serranodsdd/media/media_profiles.xml:system/etc/media_profiles.xml \

# Keylayouts
PRODUCT_COPY_FILES += \
    device/samsung/serranodsdd/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/samsung/serranodsdd/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/samsung/serranodsdd/keylayout/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
    device/samsung/serranodsdd/keylayout/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
    device/samsung/serranodsdd/keylayout/sec_keys.kl:system/usr/keylayout/sec_keys.kl \
    device/samsung/serranodsdd/keylayout/sec_powerkey.kl:system/usr/keylayout/sec_powerkey.kl \
    device/samsung/serranodsdd/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    device/samsung/serranodsdd/keylayout/sii9234_rcp.kl:system/usr/keylayout/sii9234_rcp.kl \
    device/samsung/serranodsdd/keylayout/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl \

# Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/serranodsdd/rootdir/fstab.qcom:root/fstab.qcom \
    device/samsung/serranodsdd/rootdir/init.qcom.power.rc:root/init.qcom.power.rc \
    device/samsung/serranodsdd/rootdir/init.qcom.rc:root/init.qcom.rc \
    device/samsung/serranodsdd/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/samsung/serranodsdd/rootdir/init.target.rc:root/init.target.rc \
    device/samsung/serranodsdd/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc \

# Etc scripts
PRODUCT_COPY_FILES += \
    device/samsung/serranodsdd/rootdir/system/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    device/samsung/serranodsdd/rootdir/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/samsung/serranodsdd/rootdir/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \

# Eleven
#PRODUCT_COPY_FILES += \
#    device/samsung/serranodsdd/prebuilt/Eleven.apk:system/app/Eleven/Eleven.apk

# GPS/location security configuration file
PRODUCT_COPY_FILES += \
    device/samsung/serranodsdd/configs/sec_config:system/etc/sec_config \

# GPS config
PRODUCT_COPY_FILES += \
    device/samsung/serranodsdd/configs/gps.conf:system/etc/gps.conf \
    device/samsung/serranodsdd/configs/sap.conf:system/etc/sap.conf \

# GPS HAL
PRODUCT_PACKAGES += \
    gps.msm8960 \

# FM radio
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio \

# Lights
PRODUCT_PACKAGES += \
    lights.serrano \

# IR package
PRODUCT_PACKAGES += \
    consumerir.msm8960 \

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \

# F2FS
PRODUCT_PACKAGES += \
    fsck.f2fs \
    mkfs.f2fs \

# RIL
PRODUCT_PACKAGES += \
    libril_shim \

# Doze
#PRODUCT_PACKAGES += \
#    SamsungDoze \

# Camera
PRODUCT_PACKAGES += \
    Snap \

# Voice processing
PRODUCT_PACKAGES += \
    libqcomvoiceprocessing \

# Gello
PRODUCT_PACKAGES += \
    Gello \

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1 \
    debug.mdpcomp.logs=0 \
    persist.hwc.mdpcomp.enable=true \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=0 \

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images \

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \

# TinyAlsa utils
PRODUCT_PACKAGES += \
    tinyplay \
    tinycap \
    tinymix \
    tinypcminfo \

# HAL
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    memtrack.msm8960 \
    power.msm8960 \

# Media
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw \

# Camera Wrapper
PRODUCT_PACKAGES += \
    camera.msm8960 \

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    librs_jni \

# WCNSS service daemon
PRODUCT_PACKAGES += \
    libwcnss_qmi \
    wcnss_service \

# Prima opensource driver files
PRODUCT_COPY_FILES += \
    device/samsung/serranodsdd/prima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/samsung/serranodsdd/prima/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/samsung/serranodsdd/prima/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \

PRODUCT_COPY_FILES += \
    device/samsung/serranodsdd/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/samsung/serranodsdd/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \

# Config files for hostapd
PRODUCT_COPY_FILES += \
    device/samsung/serranodsdd/configs/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    device/samsung/serranodsdd/configs/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/samsung/serranodsdd/configs/hostapd.deny:system/etc/hostapd/hostapd.deny \

# SoftAP
PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg \
    libqsap_sdk \

# WPA supplicant
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf \

# Stlport
PRODUCT_PACKAGES += \
    libstlport \

# Thermal profiles
PRODUCT_COPY_FILES += \
    device/samsung/serranodsdd/configs/thermald-8930.conf:system/etc/thermald-8930.conf \
    device/samsung/serranodsdd/configs/thermald-8930ab.conf:system/etc/thermald-8930ab.conf \

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    persist.service.adb.enable=1 \

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=12m \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapsize=256m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=4m \
    	
# call common serrano system props
$(call inherit-product, device/samsung/serranodsdd/system_prop.mk)

# call dalvik heap config
#$(call inherit-product, frameworks/native/build/phone-hdpi-2048-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/serrano-common/serrano-common-vendor.mk)
