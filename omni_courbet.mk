#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from courbet device
$(call inherit-product, device/xiaomi/courbet/device.mk)

PRODUCT_DEVICE := courbet
PRODUCT_NAME := omni_courbet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 11 Lite 4G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TQ3A.230901.001"

BUILD_FINGERPRINT := Xiaomi/lineage_courbet/courbet:13/TQ3A.230901.001/nobody09200818:user/release-keys
