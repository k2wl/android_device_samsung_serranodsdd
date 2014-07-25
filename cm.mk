# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/samsung/serranodsdd/full_serranodsdd.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=serranodsxx TARGET_DEVICE=serranods BUILD_FINGERPRINT="samsung/serranodsxx/serranods:4.4.2/KOT49H/I9192XXUCNG2:user/release-keys" PRIVATE_BUILD_DESC="serranodsxx-user 4.4.2 KOT49H I9192XXUCNG2 release-keys"

PRODUCT_DEVICE := serranodsdd
PRODUCT_NAME := cm_serranodsdd
