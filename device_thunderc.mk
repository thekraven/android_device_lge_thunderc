DEVICE_PACKAGE_OVERLAYS += device/lge/thunderc/overlay/common device/lge/thunderc/overlay/LS670

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/thunderc/files/LS670/kernel/zImage
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
    gps.thunderc \
	gralloc.thunderc \
	copybit.thunderc \
    libsensorservice \
    librs_jni \
    libmm-omxcore \
    libOmxCore \
    bdaddr_read \
    flash_image \
    dump_image \
    erase_image \
    e2fsck \
    SpareParts \
	libcamera \
    CMWallpapers \
    CMTimers \
	CMDroidwall \
	 rzscontrol \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    toggleshutter \
    setup_fs \
    patchlcs \
    screencap \
    dexpreopt
	
DISABLE_DEXPREOPT := false

# CyanMobile
PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/common/app/ics.apk:system/app/ics.apk \
    vendor/cyanogen/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/cyanogen/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/cyanogen/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/cyanogen/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/cyanogen/prebuilt/common/bin/modelid_cfg.sh:system/bin/modelid_cfg.sh \
    vendor/cyanogen/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/cyanogen/prebuilt/common/bin/verify_cache_partition_size.sh:system/bin/verify_cache_partition_size.sh \
    vendor/cyanogen/prebuilt/common/bin/zipalign:system/bin/zipalign \
    vendor/cyanogen/prebuilt/common/lib/libncurses.so:system/lib/libncurses.so
	
# Backlight
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/lib/hw/lights.thunderc.so:system/lib/hw/lights.thunderc.so \

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/common/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/lge/thunderc/files/common/usr/keylayout/thunder_keypad.kl:system/usr/keylayout/thunder_keypad.kl \
    device/lge/thunderc/files/common/usr/keylayout/thunder_keypad.kl:system/usr/keylayout/thunderc_keypad.kl \
    device/lge/thunderc/files/handset-keypress:system/bin/handset-keypress \
    vendor/lge/thunderc/proprietary/system/usr/keychars/thunder_keypad.kcm.bin:system/usr/keychars/thunder_keypad.kcm.bin \
    vendor/lge/thunderc/proprietary/system/usr/keychars/thunder_keypad.kcm.bin:system/usr/keychars/thunderc_keypad.kcm.bin \	

# Board-specific init
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/common/init.thunderc.rc:root/init.thunderc.rc \
    device/lge/thunderc/files/common/init.thunderc.rc:root/init.thunder.rc \
    device/lge/thunderc/files/common/ueventd.thunderc.rc:root/ueventd.thunder.rc \
    device/lge/thunderc/files/common/ueventd.thunderc.rc:root/ueventd.thunderc.rc \
    device/lge/thunderc/files/common/etc/init.local.rc:/system/etc/init.local.rc

# Off-mode charging pieces
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/ftmpower:root/sbin/ftmpower \
    device/lge/thunderc/files/battery_charging:system/bin/battery_charging \
    device/lge/thunderc/files/common/sbin/chargerlogo:root/sbin/chargerlogo \
    device/lge/thunderc/files/common/chargerimages/battery_ani_01.rle:root/chargerimages/battery_ani_01.rle \
    device/lge/thunderc/files/common/chargerimages/battery_ani_02.rle:root/chargerimages/battery_ani_02.rle \
    device/lge/thunderc/files/common/chargerimages/battery_ani_03.rle:root/chargerimages/battery_ani_03.rle \
    device/lge/thunderc/files/common/chargerimages/battery_ani_04.rle:root/chargerimages/battery_ani_04.rle \
    device/lge/thunderc/files/common/chargerimages/battery_ani_05.rle:root/chargerimages/battery_ani_05.rle \
    device/lge/thunderc/files/common/chargerimages/battery_charging_01.rle:root/chargerimages/battery_charging_01.rle \
    device/lge/thunderc/files/common/chargerimages/battery_charging_02.rle:root/chargerimages/battery_charging_02.rle \
    device/lge/thunderc/files/common/chargerimages/battery_charging_03.rle:root/chargerimages/battery_charging_03.rle \
    device/lge/thunderc/files/common/chargerimages/battery_charging_04.rle:root/chargerimages/battery_charging_04.rle \
    device/lge/thunderc/files/common/chargerimages/battery_charging_05.rle:root/chargerimages/battery_charging_05.rle \
    device/lge/thunderc/files/common/chargerimages/battery_charging_06.rle:root/chargerimages/battery_charging_06.rle \
    device/lge/thunderc/files/common/chargerimages/battery_notenough.rle:root/chargerimages/battery_notenough.rle \
    device/lge/thunderc/files/common/chargerimages/battery_bg.rle:root/chargerimages/battery_bg.rle \
    device/lge/thunderc/files/common/chargerimages/black_bg.rle:root/chargerimages/black_bg.rle \
    device/lge/thunderc/files/common/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_01.rle \
    device/lge/thunderc/files/common/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_02.rle \
# Change this if you'd like to use the splash screen from a different carrier
# Change this to a non-existent directory if you'd like to disable the boot animation
#BOOTIMAGE_MODEL := LS670

# Locate vendor bootimage files if present
# Because these are carrier specific, I've left the default to no logo.
#BOOTIMAGE_FILES := $(wildcard device/lge/thunderc/files/$(BOOTIMAGE_MODEL)/bootimages/*.rle)

#ifeq ($(BOOTIMAGE_FILES),)
PRODUCT_COPY_FILES += \
      device/lge/thunderc/files/common/initlogo.rle:root/initlogo.rle
#else
#  PRODUCT_PACKAGES += bootlogo
#  PRODUCT_COPY_FILES += \
#      $(foreach f,$(BOOTIMAGE_FILES),$(f):root/bootimages/$(notdir $(f)))
#endif

# 2D (using proprietary because of poor performance of open source libs)
#PRODUCT_COPY_FILES += \
#    vendor/lge/thunderc/proprietary/system2/lib/hw/gralloc.msm7k.so:system/lib/hw/gralloc.msm7k.so \
#    vendor/lge/thunderc/proprietary/system2/lib/hw/copybit.msm7k.so:system/lib/hw/copybit.thunderc.so \
#    vendor/lge/thunderc/proprietary/system2/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so \
# Sensors
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system2/bin/ami304d:system/bin/ami304d \
    vendor/lge/thunderc/proprietary/system2/lib/hw/sensors.thunderc.so:system/lib/hw/sensors.thunderc.so \
#    vendor/lge/thunderc/proprietary/system2/lib/libsensorservice.so:system/lib/libsensorservice.so \
	# GPS
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/common/etc/loc_parameter.ini:system/etc/loc_parameter.ini \
    vendor/lge/thunderc/proprietary/system/lib/libloc_api.so:system/lib/libloc_api.so \
    vendor/lge/thunderc/proprietary/system/lib/libgps.so:system/lib/libgps.so \
    vendor/lge/thunderc/proprietary/system/lib/libloc.so:system/lib/libloc.so \
    vendor/lge/thunderc/proprietary/system/lib/libloc.so:obj/lib/libloc.so \
    vendor/lge/thunderc/proprietary/system/lib/libcommondefs.so:system/lib/libcommondefs.so \
    vendor/lge/thunderc/proprietary/system/lib/libloc-rpc.so:system/lib/libloc-rpc.so

# 3D
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/lge/thunderc/proprietary/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/lge/thunderc/proprietary/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/lge/thunderc/proprietary/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/lge/thunderc/proprietary/system/lib/libgsl.so:system/lib/libgsl.so \
    vendor/lge/thunderc/proprietary/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/lge/thunderc/proprietary/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \

# Camera
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/lge/thunderc/proprietary/system/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/lge/thunderc/proprietary/system/lib/libmmjpeg.so:system/lib/libmmjpeg.so \

# WiFi
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/LS670/kernel/wireless.ko:system/lib/modules/wireless.ko \
    device/lge/thunderc/files/LS670/kernel/tun.ko:system/lib/modules/tun.ko \
    device/lge/thunderc/files/LS670/kernel/librasdioif.ko:system/lib/modules/librasdioif.ko \
    device/lge/thunderc/files/common/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    vendor/lge/thunderc/proprietary/system/etc/wl/nvram.txt:system/etc/wl/nvram.txt \
    device/lge/thunderc/files/common/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    vendor/lge/thunderc/proprietary/system/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
    vendor/lge/thunderc/proprietary/system/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \
    vendor/lge/thunderc/proprietary/system/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin

# SD Card
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/etc/vold.fstab:system/etc/vold.fstab \

# Audio
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/common/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    vendor/lge/thunderc/proprietary/system/lib/libaudioeq.so:system/lib/libaudioeq.so \
    device/lge/thunderc/files/common/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \

# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \

# LGE services
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/bin/qmuxd:system/bin/qmuxd \

# RIL
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/lge/thunderc/proprietary/system/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/lge/thunderc/proprietary/system/lib/libdsm.so:system/lib/libdsm.so \
    vendor/lge/thunderc/proprietary/system/lib/libqueue.so:system/lib/libqueue.so \
    vendor/lge/thunderc/proprietary/system/lib/libdiag.so:system/lib/libdiag.so \
    vendor/lge/thunderc/proprietary/system/lib/libauth.so:system/lib/libauth.so \
    vendor/lge/thunderc/proprietary/system/lib/libcm.so:system/lib/libcm.so \
    vendor/lge/thunderc/proprietary/system/lib/libnv.so:system/lib/libnv.so \
    vendor/lge/thunderc/proprietary/system/lib/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/lge/thunderc/proprietary/system/lib/libwms.so:system/lib/libwms.so \
    vendor/lge/thunderc/proprietary/system/lib/libwmsts.so:system/lib/libwmsts.so \
    vendor/lge/thunderc/proprietary/system/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/lge/thunderc/proprietary/system/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/lge/thunderc/proprietary/system/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/lge/thunderc/proprietary/system/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/lge/thunderc/proprietary/system/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    vendor/lge/thunderc/proprietary/system/lib/libsnd.so:system/lib/libsnd.so \
    vendor/lge/thunderc/proprietary/system/lib/libqmi.so:system/lib/libqmi.so \
    vendor/lge/thunderc/proprietary/system/lib/libdll.so:system/lib/libdll.so \
    vendor/lge/thunderc/proprietary/system/lib/liblgerft.so:system/lib/liblgerft.so \
    vendor/lge/thunderc/proprietary/system/lib/libbcmwl.so:system/lib/libbcmwl.so \
    vendor/lge/thunderc/proprietary/system/lib/libdss.so:system/lib/libdss.so \
    vendor/lge/thunderc/proprietary/system/lib/libril.so:system/lib/libril.so \
    vendor/lge/thunderc/proprietary/system/bin/rild:system/bin/rild \

# OMX
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so

# CND
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/bin/cnd:system/bin/cnd

PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/common/etc/media_profiles.xml:system/etc/media_profiles.xml \
#    device/lge/thunderc/files/common/etc/init.d/mvdalvik.sh:system/etc/init.d/01mvdalvik \

# Let's use our own GPS config file
PRODUCT_COPY_FILES += device/lge/thunderc/files/common/etc/gps.conf:system/etc/gps.conf
PRODUCT_COPY_FILES += device/lge/thunderc/files/common/etc/SuplRootCert:system/etc/SuplRootCert
$(call inherit-product, build/target/product/small_base.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_small.mk)
# We don't need to pull in the languages_full.mk manually because it'll get clobbered anyhow by full.mk
# mdpi goes last so that the janky default locale/region code can pick a sane default
PRODUCT_LOCALES += mdpi

PRODUCT_NAME := full_thunderc
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := thunderc
PRODUCT_MANUFACTURER := LGE

CDMA_GOOGLE_BASE := android-sprint-us
CDMA_CARRIER_ALPHA := Sprint
CDMA_CARRIER_NUMERIC := 310120
BLUETOOTH_FIRMWARE := BCM4325D1_004.002.004.0218.0248.hcd

# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/bin/$(BLUETOOTH_FIRMWARE):system/bin/BCM4325.hcd

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.brand=$(CDMA_BRAND) \
    ro.com.google.clientidbase=$(CDMA_GOOGLE_BASE) \
    ro.cdma.home.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    ro.cdma.home.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.sim.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.sim.operator.numeric=$(CDMA_CARRIER_NUMERIC) \
    gsm.operator.alpha=$(CDMA_CARRIER_ALPHA) \
    gsm.operator.numeric=$(CDMA_CARRIER_NUMERIC)
