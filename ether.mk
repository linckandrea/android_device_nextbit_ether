# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common abc stuff.
$(call inherit-product, vendor/nexus/configs/abc_phone.mk)

# Inherit device configuration
$(call inherit-product, device/nextbit/ether/device.mk)

## Device identifier. This must come after all inclusions
TARGET_ARCH := arm64
TARGET_GAPPS_ARCH := arm64
TARGET_DENSITY := xxhdpi
PRODUCT_NAME := ether
BOARD_VENDOR := nextbit
TARGET_VENDOR := nextbit
PRODUCT_DEVICE := ether

PRODUCT_BRAND := Nextbit
PRODUCT_MODEL := Robin
PRODUCT_MANUFACTURER := Nextbit

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ether-user 7.1.1 Robin_Nougat_108 00WW_Jenkins_108 release-keys"

BUILD_FINGERPRINT := Nextbit/ether/ether:7.1.1/Robin_Nougat_108/00WW_Jenkins_108:user/release-keys
