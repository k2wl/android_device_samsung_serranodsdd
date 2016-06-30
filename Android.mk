# Copyright (C) 2013 The Android Open-Source Project
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

# WARNING: Everything listed here will be built on ALL platforms,
# including x86, the emulator, and the SDK.  Modules must be uniquely
# named (liblights.tuna), and must build everywhere, or limit themselves
# to only building on ARM if they include assembly. Individual makefiles
# are responsible for having their own logic, for fine-grained control.

LOCAL_PATH := $(call my-dir)

ifeq ($(BOARD_VENDOR),samsung)
ifeq ($(TARGET_BOARD_PLATFORM),msm8960)
ifneq ($(filter serrano3gxx serranodsdd serranodsub serranoltebmc \
                serranoltespr serranolteusc serranoltexx,$(TARGET_DEVICE)),)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

MODEM_IMAGES := \
    modem.b00 modem.b01 modem.b02 modem.b03 modem.b04 modem.b05 \
    modem.b06 modem.b07 modem.b08 modem.b09 modem.b10 modem.mdt

MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MODEM_IMAGES)))
$(MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MODEM_SYMLINKS)

MODEM_FW_IMAGES := \
    modem_fw.b00 modem_fw.b01 modem_fw.b02 modem_fw.b03 modem_fw.b04 \
    modem_fw.b05 modem_fw.b09 modem_fw.b10 modem_fw.b11 modem_fw.b12 \
    modem_fw.b13 modem_fw.b15 modem_fw.b16 modem_fw.b17 modem_fw.b18 \
    modem_fw.b23 modem_fw.b24 modem_fw.b25 modem_fw.b27 modem_fw.b28 \
    modem_fw.b31 modem_fw.fli modem_fw.mdt

MODEM_FW_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MODEM_FW_IMAGES)))
$(MODEM_FW_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MODEM_FW_SYMLINKS)

Q6_IMAGES := \
    q6.b00 q6.b01 q6.b03 q6.b04 q6.b05 q6.b06 q6.mdt

Q6_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(Q6_IMAGES)))
$(Q6_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Q6 firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(Q6_SYMLINKS)

TZAPPS_IMAGES := \
    tzapps.b00 tzapps.b01 tzapps.b02 tzapps.b03 tzapps.mdt

TZAPPS_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(TZAPPS_IMAGES)))
$(TZAPPS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "TZAPPS firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(TZAPPS_SYMLINKS)

VIDC_IMAGES := \
    vidc.b00 vidc.b01 vidc.b02 vidc.b03 vidc.mdt

VIDC_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(VIDC_IMAGES)))
$(VIDC_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "VIDC firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(VIDC_SYMLINKS)

WCNSS_IMAGES := \
    wcnss.b00 wcnss.b01 wcnss.b02 wcnss.b04 wcnss.b05 \
    wcnss.b06 wcnss.mdt

WCNSS_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(WCNSS_IMAGES)))
$(WCNSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "WCNSS firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WCNSS_SYMLINKS)

$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wlan/prima; \
	ln -sf /data/misc/wifi/WCNSS_qcom_cfg.ini \
		$(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_qcom_cfg.ini)

$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wcd9310; \
	ln -sf /data/misc/audio/wcd9310_anc.bin \
		$(TARGET_OUT_ETC)/firmware/wcd9310/wcd9310_anc.bin; \
	ln -sf /data/misc/audio/mbhc.bin \
		$(TARGET_OUT_ETC)/firmware/wcd9310/wcd9310_mbhc.bin)
endif
endif
endif