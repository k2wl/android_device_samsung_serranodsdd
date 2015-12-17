# system.prop for serranodsdd
#

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libsec-ril.so \
	rild.libargs=-d /dev/smd0 \
	telephony.lteOnGsmDevice=0 \
	ro.telephony.default_network=3,0 \
	ro.multi.rild=true \
	persist.dsds.enabled=true \
	persist.radio.multisim.config=dsds \
	persist.multisim.config=dsds \
    ro.telephony.ril_class=SerranoDSRIL \
