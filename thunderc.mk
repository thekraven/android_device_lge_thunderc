# Most specific first. 
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk) 

#LOCAL_KERNEL_DIR := device/lge/thunderc/kernels/test21
#LOCAL_KERNEL_MODULES := librasdioif.ko wireless.ko
#LOCAL_KERNEL_MODULES := librasdioif.ko tun.ko wireless.ko

#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL_DIR)/zImage:kernel

#PRODUCT_COPY_FILES += \
#    $(foreach f,$(LOCAL_KERNEL_MODULES),$(LOCAL_KERNEL_DIR)/$(f):system/lib/modules/$(f)) \

# thunderc configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thunder_keypad.kl:system/usr/keylayout/thunder_keypad.kl \
    $(LOCAL_PATH)/configs/thunder_keypad.kcm.bin:system/usr/keychars/thunder_keypad.kcm.bin \
	$(LOCAL_PATH)/configs/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc \
    $(LOCAL_PATH)/configs/999youtube:system/etc/init.d/999youtube \
	$(LOCAL_PATH)/configs/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc
#	$(LOCAL_PATH)/configs/40a2sd:system/etc/init.d/40a2sd \
#	$(LOCAL_PATH)/configs/05mountsd:system/etc/init.d/05mountsd \
#	$(LOCAL_PATH)/configs/12Seeder:system/etc/init.d/12Seeder \
#	$(LOCAL_PATH)/configs/rngd:system/xbin/rngd \
#    $(LOCAL_PATH)/configs/wireless.ko:system/lib/modules/wireless.ko \
#	$(LOCAL_PATH)/configs/tun.ko:system/lib/modules/tun.ko \
 #   $(LOCAL_PATH)/configs/librasdioif.ko:system/lib/modules/librasdioif.ko \	

PRODUCT_COPY_FILES += device/lge/thunderc/configs/default.prop:root/default.prop 
PRODUCT_COPY_FILES += device/lge/thunderc/configs/thunderc_keypad.kl:system/usr/keylayout/thunderc_keypad.kl 
PRODUCT_COPY_FILES += device/lge/thunderc/configs/thunderc_keypad.kcm.bin:system/usr/keychars/thunderc_keypad.kcm.bin 
PRODUCT_COPY_FILES += device/lge/thunderc/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl 
PRODUCT_COPY_FILES += device/lge/thunderc/configs/Generic.kl:system/usr/keylayout/Generic.kl 

# thunderc init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.thunderc.rc:root/init.thunderc.rc \
    $(LOCAL_PATH)/ueventd.thunderc.rc:root/ueventd.thunderc.rc
	
PRODUCT_COPY_FILES += $(LOCAL_PATH)/checkbootreason:root/sbin/checkbootreason 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_01.rle:root/chargerimages/battery_ani_01.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_02.rle:root/chargerimages/battery_ani_02.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_03.rle:root/chargerimages/battery_ani_03.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_04.rle:root/chargerimages/battery_ani_04.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_ani_05.rle:root/chargerimages/battery_ani_05.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_bg.rle:root/chargerimages/battery_bg.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_01.rle:root/chargerimages/battery_charging_01.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_02.rle:root/chargerimages/battery_charging_02.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_03.rle:root/chargerimages/battery_charging_03.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_04.rle:root/chargerimages/battery_charging_04.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_05.rle:root/chargerimages/battery_charging_05.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_charging_06.rle:root/chargerimages/battery_charging_06.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_01.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/battery_wait_ani_02.rle:root/chargerimages/battery_wait_ani_02.rle \
    $(LOCAL_PATH)/chargemode/chargerimages/black_bg.rle:root/chargerimages/black_bg.rle \
    $(LOCAL_PATH)/chargemode/chargerlogo:root/sbin/chargerlogo

# P500 bluetooth vendor configuration 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf
	
# thunderc Audio
#PRODUCT_PACKAGES += \
#    audio_policy.thunderc \
#    audio.primary.thunderc
	
#P500_SPEAKER_IN_CALL_FIX 
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Live wallpapers
PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Full-featured build of the Open-Source
#$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, vendor/lge/thunderc/thunderc-vendor.mk) 
$(call inherit-product, device/lge/msm7x27-common/device.mk)
$(call inherit-product, vendor/lge/msm7x27-common/msm7x27-common-vendor-blobs.mk)
# Inherit languages 
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_small.mk)

PRODUCT_NAME := thunderc
PRODUCT_DEVICE := thunderc
PRODUCT_MODEL := LG-LS670
PRODUCT_MANUFACTURER := LGE

PRODUCT_AAPT_PREF_CONFIG := mdpi 
$(call inherit-product, device/mdpi-common/mdpi.mk)
 
DEVICE_PACKAGE_OVERLAYS += device/lge/thunderc/overlay

CDMA_GOOGLE_BASE := android-sprint-us
CDMA_CARRIER_ALPHA := Sprint
CDMA_CARRIER_NUMERIC := 310120


PRODUCT_PROPERTY_OVERRIDES += \
    ro.cdma.home.operator.numeric=310120 \
	ro.com.google.clientidbase=android-sprint-us \
    ro.cdma.home.operator.alpha=Sprint \
    gsm.sim.operator.alpha = sprint \
    gsm.sim.operator.numeric = 310120 \
    gsm.sim.operator.iso-country = us \
    gsm.operator.alpha = sprint \
    gsm.operator.numeric = 310120 \
    gsm.operator.iso-country = us


