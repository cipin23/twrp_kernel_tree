#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/a02
# Copy ueventd dari root.zip ke root ramdisk recovery
PRODUCT_COPY_FILES += \
    device/samsung/a02/root.zip/system/etc/ueventd.rc:recovery/root/ueventd.rc
