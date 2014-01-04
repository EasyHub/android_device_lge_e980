# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, device/lge/e980/device.mk)
$(call inherit-product-if-exists, vendor/lge/e980/e980-vendor.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := lg_e986
PRODUCT_DEVICE := e986	
PRODUCT_BRAND := lg
PRODUCT_MANUFACTURER := Lg
PRODUCT_MODEL := E986
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=e98x TARGET_DEVICE=e986 BUILD_FINGERPRINT="lg/e98x/e986:4.4.1/JRO03C/E986XXALJ3:user/release-keys" PRIVATE_BUILD_DESC="e986xx-user 4.4.1 JRO03C E986XXALJ3 release-keys"
