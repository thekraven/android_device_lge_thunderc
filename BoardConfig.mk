# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

include vendor/lge/thunderc/BoardConfigVendor.mk

# Camera
# http://r.cyanogenmod.com/#/c/13317/
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
#BOARD_CAMERA_USE_GETBUFFERINFO := true
#BOARD_USE_CAF_LIBCAMERA := true
# This is needed by libcamera.so 
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true 


# Kernel
#TARGET_KERNEL_SOURCE := kernel/lge/thunderc
#TARGET_KERNEL_CONFIG := cyanogenmod_thunderc_defconfig
TARGET_PREBUILT_KERNEL := device/lge/thunderc/kernels/test10/zImage
TARGET_SPECIFIC_HEADER_PATH := device/lge/thunderc/include

# Platform
TARGET_BOARD_PLATFORM := msm7x27
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# CPU
ARCH_ARM_HAVE_VFP := true
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp

#Device Information
TARGET_ARCH := arm
TARGET_PROVIDES_INIT_TARGET_RC := true

# Boot loader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := thunderc
TARGET_OTA_ASSERT_DEVICE := thunderc

# QCOM Hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_CDMA_NETWORK := true

# Enable OpenGL Hardware Acceleration
# msm7x27: no support for overlay, bypass, or c2d
USE_OPENGL_RENDERER := true
TARGET_USE_OVERLAY := false
TARGET_HAVE_BYPASS := false
TARGET_USES_C2D_COMPOSITION := false
TARGET_USES_GENLOCK := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
BOARD_EGL_CFG := vendor/lge/thunderc/proprietary/$(SUB_MODEL)/lib/egl/egl.cfg

# http://www.slideshare.net/jserv/design-and-concepts-of-android-graphics
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27 -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DMISSING_GRALLOC_BUFFERS -DREFRESH_RATE=60

# Skia
BOARD_USE_SKIA_LCDTEXT := true

# Fix this up by examining /proc/mtd on a running device
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=thunderc
BOARD_KERNEL_BASE := 0x12200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00700000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00700000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x09e80000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0a4e0000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true

# Audio & Bluetooth
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_AUDIO_LEGACY := false
BOARD_COMBO_DEVICE_SUPPORTED := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# RIL
#BOARD_PROVIDES_LIBRIL := true

# Enable the GPS HAL & AMSS version to use for GPS
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := thunderc
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Nedeed for LGP500 sensors
COMMON_GLOBAL_CFLAGS += -DUSE_LGE_ALS_DUMMY

# Enable JIT
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
ENABLE_JSC_JIT := true

# Mass Storage for ICS
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_CUSTOM_USB_CONTROLLER := ../../device/lge/thunderc/prebuilt/UsbController.cpp
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/vold/179:1
BOARD_SDEXT_DEVICE := /dev/block/vold/179:2

# Touch screen compatibility for ICS
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Wireless
BOARD_WLAN_DEVICE               := bcm4325
WIFI_DRIVER_FW_STA_PATH         := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH          := "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_MODULE_NAME         := "wireless"
WIFI_DRIVER_MODULE_PATH         := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG          := "firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
#WIFI_DRIVER_MODULE_ARG          := "firmware_path=/system/etc/wl/rtecdc.bin nvram_path=/system/etc/wl/nvram.txt"
WPA_SUPPLICANT_VERSION          := VER_0_6_X
HOSTAPD_VERSION                 := VER_0_6_X
WIFI_DRIVER_HAS_LGE_SOFTAP      := true
BOARD_WEXT_NO_COMBO_SCAN        := true
BOARD_WPA_SUPPLICANT_DRIVER     := WEXT

# FM Radio
BOARD_FM_DEVICE := bcm4325
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

TARGET_NO_RADIOIMAGE := true
#TARGET_NO_RECOVERY := true
#TARGET_GLOBAL_CFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os
#TARGET_GLOBAL_CPPFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os

#Camera
#BOARD_USE_FROYO_LIBCAMERA := true


BOARD_CUSTOM_BRCM_PATCHRAM_PLUS := ../../../device/lge/thunderc/prebuilt/brcm_patchram_plus.c

#Kernel
#BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=thunderc


#ICS settings
#DISABLE_DEXPREOPT := true
#BOARD_NO_PAGE_FLIPPING := true
#BUILD_OLD_LIBCAMERA:= true
#TARGET_FORCE_CPU_UPLOAD := true


# OFFLINE CHARGING
BOARD_GLOBAL_CFLAGS += -DCHARGERMODE_CMDLINE_NAME='"lge.reboot"' -DCHARGERMODE_CMDLINE_VALUE='"pwroff"'
