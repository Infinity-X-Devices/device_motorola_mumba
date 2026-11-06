#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mumba device
$(call inherit-product, device/motorola/mumba/device.mk)

# Inherit some common InfinityX stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Maintainer Name 
INFINITY_MAINTAINER := "NoEscape.exe"

# Whether you are compiling being an OFFICIAL Maintainer:
INFINITY_BUILD_TYPE := OFFICIAL

PRODUCT_NAME := infinity_mumba
PRODUCT_DEVICE := mumba
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Motorola G57 Power

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="mumba_g-user 17 A171WAAM-A171-ST2.1 221d7 release-keys" \
    BuildFingerprint=motorola/mumba_g/mumba:17/A171WAAM-A171-ST2.1/221d7:user/release-keys \
    DeviceName=mumba \
    DeviceProduct=mumba \
    SystemDevice=mumba \
    SystemName=mumba
