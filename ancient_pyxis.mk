#
# Copyright (C) 2020 Bliss Team
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Bliss stuff.
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH :=arm64
TARGET_HAS_FOD :=true
ANCIENT_NOGAPPS := true

# Inherit from pyxis device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := pyxis
PRODUCT_NAME := ancient_pyxis
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 9 Lite
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="pyxis" \
    TARGET_DEVICE="pyxis"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
