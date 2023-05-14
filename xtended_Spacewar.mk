#
# Copyright (C) 2022 Project-Xtended
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/nothing/Spacewar/device.mk)

# Inherit from Project-Xtended configuration.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

# Bootanimation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Nothing
PRODUCT_DEVICE := Spacewar
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A063
PRODUCT_NAME := xtended_Spacewar
PRODUCT_SYSTEM_DEVICE := Spacewar
PRODUCT_SYSTEM_NAME := Spacewar

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-nothing

# Override device name for Play Store.
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
    
XTENDED_BUILD_TYPE := OFFICIAL
XTENDED_BUILD_MAINTAINER := mukesh22584
WITH_GAPPS := true
