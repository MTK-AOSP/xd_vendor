#
# Copyright (C) 2020 Raphielscape LLC. and Haruka LLC.
# Copyright (C) 2021 xdroid, and xyzprjkt
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

# Inherit from our versioning
$(call inherit-product, vendor/xd/config/versioning.mk)

# Inherit from our kernel/header generator
$(call inherit-product, vendor/xd/config/xd_BoardConfig.mk)

# Inherit from xdroid stuff
$(call inherit-product, vendor/xdUI/config.mk)

# Inherit Google Packages
$(call inherit-product, vendor/google/gms/config.mk)
$(call inherit-product, vendor/google/pixel/config.mk)

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := false
ifneq ($(TARGET_DISABLE_ALTERNATIVE_FACE_UNLOCK), true)
PRODUCT_PACKAGES += \
    FaceUnlockService
TARGET_FACE_UNLOCK_SUPPORTED := true
endif
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.face.moto_unlock_service=$(TARGET_FACE_UNLOCK_SUPPORTED)
