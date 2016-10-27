# Copyright (C) 2016 The CyanogenMod Project
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
#

MTK_PROJECT_CONFIG ?= device/motorola/taido/ProjectConfig.mk
include $(MTK_PROJECT_CONFIG)

# MKIMAGE
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/mkbootimg:mkbootimg

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/enableswap.sh:recovery/root/enableswap.sh \
    $(LOCAL_PATH)/rootdir/fstab.mt6735:recovery/root/fstab.mt6735 \
    $(LOCAL_PATH)/rootdir/factory_init.rc:recovery/root/factory_init.rc \
    $(LOCAL_PATH)/rootdir/factory_init.usb.rc:recovery/root/factory_init.usb.rc \
    $(LOCAL_PATH)/rootdir/factory_init.project.rc:recovery/root/factory_init.project.rc \
    $(LOCAL_PATH)/rootdir/meta_init.rc:recovery/root/meta_init.rc \
    $(LOCAL_PATH)/rootdir/meta_init.modem.rc:recovery/root/meta_init.modem.rc \
    $(LOCAL_PATH)/rootdir/meta_init.project.rc:recovery/root/meta_init.project.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.mt6735.rc:recovery/root/meta_init.project.rc \
    $(LOCAL_PATH)/rootdir/ueventd.mt6735.rc:recovery/root/ueventd.mt6735.rc \
    $(LOCAL_PATH)/rootdir/verity_key:recovery/root/verity_key \

# System Properties
#PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
#    persist.sys.usb.config=mtp

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Additional Properties
PRODUCT_PROPERTY_OVERRIDES += \
   ro.lenovo.ota.extsd=/sdcard \
   ro.product.ota.model=MotoTaido_ROW
   ro.product.sw.internal.version=XT1706_USR_S131_1609051412_mp1V2.39.1_ROW

# Versioning
PRODUCT_PROPERTY_OVERRIDES += \
    ro.mediatek.version.release=$(MTK_BUILD_VERNO) \
    ro.mediatek.chip_ver=$(MTK_CHIP_VER)
