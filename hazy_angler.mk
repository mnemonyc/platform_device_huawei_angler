# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/huawei/angler/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Hazy stuff.
$(call inherit-product, vendor/hazy/configs/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/hazy/configs/nfc_enhanced.mk)

# Inherit from our Hazy product configuration
$(call inherit-product, vendor/hazy/configs/common.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/angler/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := hazy_angler
PRODUCT_DEVICE := angler
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei
TARGET_VENDOR := huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:6.0/MDA89D/2294819:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 6.0 MDA89D 2294819 release-keys"

$(call inherit-product-if-exists, vendor/huawei/angler/device-vendor.mk)

PRODUCT_PACKAGES += \
    Launcher3
