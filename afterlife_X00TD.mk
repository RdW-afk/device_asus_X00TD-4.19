#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AfterlifeOS stuff
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# afterlife official flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
AFTERLIFE_MAINTAINER := Romeo_Delta_Wishkey

# Offline Charging
USE_PIXEL_CHARGING := true

# disable/enable blur support, default is false
TARGET_SUPPORTS_BLUR := true

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := afterlife_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00TD \
    PRODUCT_NAME=WW_X00TD

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm660_64-user 10 QKQ1 72 release-keys"
    
# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "asus/WW_X00TD/ASUS_X00T_6:10/QKQ1/17.2017.2012.438-20201203:user/release-keys"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.vendor.build.fingerprint=$(BUILD_FINGERPRINT) \
    ro.system.build.fingerprint=$(BUILD_FINGERPRINT) \
    ro.product.build.fingerprint=$(BUILD_FINGERPRINT) \
    ro.system_ext.build.fingerprint=$(BUILD_FINGERPRINT) \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
