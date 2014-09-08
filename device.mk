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

# Inherit from serrano-common
$(call inherit-product, device/samsung/serrano-common/serrano-common.mk)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/serranodsdd/init.carrier.rc:root/init.carrier.rc \

# Operator name
PRODUCT_COPY_FILES += \
    device/samsung/serranodsdd/plmn_se13.bin:system/etc/plmn_se13.bin \
    device/samsung/serranodsdd/plmn_delta.bin:system/etc/plmn_delta.bin \

# Default.prop overrides to get adb working at boot   
ADDITIONAL_DEFAULT_PROPERTIES += \
ro.secure=0 \
ro.adb.secure=0 \

# Etc scripts
PRODUCT_COPY_FILES += \
    device/samsung/serranodsdd/rootdir/etc/init.qcom.class_main.sh:system/etc/init.qcom.class_main.sh \
    device/samsung/serranodsdd/rootdir/etc/init.qcom.ril.sh:system/etc/init.qcom.ril.sh \
