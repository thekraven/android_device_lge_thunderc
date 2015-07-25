# Include GSM stuff
$(call inherit-product, vendor/cm/config/cdma.mk)
# Inherit device configuration for thunderc.
$(call inherit-product, device/lge/thunderc/thunderc.mk)
# Boot Animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

$(call inherit-product, vendor/cm/config/mini.mk)

PRODUCT_NAME := cm_thunderc
PRODUCT_BRAND := lge
PRODUCT_DEVICE := thunderc
PRODUCT_MODEL := LG-LS670
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

# Release name and versioning
PRODUCT_RELEASE_NAME := LS670
PRODUCT_VERSION_DEVICE_SPECIFIC :=
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lge_LS670 \
    BUILD_FINGERPRINT="lge/LS670/LS670:2.3.3/GRI40/LG-LS670-V20g.19C11F164C:user/release-keys" \
    PRIVATE_BUILD_DESC="thunderc-user 2.3.3 GRI40  LG-LS670-V20g.19C11F164C release-keys"
