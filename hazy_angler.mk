# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

PRODUCT_COPY_FILES += \
    vendor/hazy/prebuilt/bootanimation/hazy.zip:system/media/bootanimation.zip

# Inherit from our Hazy product configuration
$(call inherit-product, vendor/hazy/main.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := hazy_angler
PRODUCT_DEVICE := angler
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei

