#
# Copyright (C) 2018-2019 The Pixel3ROM Project
# Copyright (C) 2020 Raphielscape LLC. and Haruka LLC.
# Copyright (C) 2020 StormbreakerOSS
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

PLATFORM_XD_RELEASE := WHITESTONE
PLATFORM_XD_VERSION := $(PLATFORM_XD_RELEASE).$(shell date +%m%d%H%M)

TARGET_PRODUCT_SHORT := $(subst xd_,,$(TARGET_DEVICE))

ifeq ($(TARGET_BUILD_VARIANT),OFFICIAL)
    PLATFORM_XD_VERSION := $(PLATFORM_XD_RELEASE)
    PROD_VERSION += XD.xdroid-$(PLATFORM_XD_RELEASE)-$(TARGET_DEVICE)-$(shell date +%m%d%H%M)-OFFICIAL
else
    PLATFORM_XD_VERSION := $(PLATFORM_XD_RELEASE)
    PROD_VERSION += XD.xdroid-$(PLATFORM_XD_RELEASE)-$(TARGET_DEVICE)-$(shell date +%m%d%H%M)-UNOFFICIAL
endif

PRODUCT_PRODUCT_PROPERTIES += \
    ro.system.xd.version=$(PLATFORM_XD_VERSION)
