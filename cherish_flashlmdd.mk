#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from flashlmdd device
$(call inherit-product, device/lge/flashlmdd/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1440

# Device identifiers

PRODUCT_NAME := cherish_flashlmdd
PRODUCT_DEVICE := flashlmdd
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LG
PRODUCT_RELEASE_NAME := V50 ThinQ
PRODUCT_MODEL := LM-V500

TARGET_VENDOR_PRODUCT_NAME := flashlmdd_lao_com
TARGET_VENDOR_DEVICE_NAME := flashlmdd

PRODUCT_SYSTEM_NAME := V50 ThinQ
PRODUCT_SYSTEM_DEVICE := V50 ThinQ

WITH_GMS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="flashlmdd_lao_com" \
    PRIVATE_BUILD_DESC="flashlmdd_lao_com-user 11 RKQ1.210420.001 2122112261c44 release-keys"

BUILD_FINGERPRINT := "lge/flashlmdd_lao_com/flashlmdd:11/RKQ1.210420.001/2122112261c44:user/release-keys"

# Some Build Flags
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
TARGET_USES_AOSP_CHARGER := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ARCORE := false

# Add CherishOS Maintainer name
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer="AnhNotAnh"
