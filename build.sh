#!/bin/bash
# Script Build TWRP
export ALLOW_MISSING_DEPENDENCIES=true
export DEVICE_PATH=/home/codespace/twrp/device/samsung/a02
export REPO_PATH=/workspaces/twrp_kernel_tree

cp $REPO_PATH/BoardConfig.mk $DEVICE_PATH/BoardConfig.mk
cp $REPO_PATH/device.mk $DEVICE_PATH/device.mk

cd ~/twrp
source build/envsetup.sh
lunch twrp_a02-eng
mka recoveryimage -j$(nproc --all)

mkdir -p $REPO_PATH/output
cp out/target/product/a02/recovery.img $REPO_PATH/output/recovery.img
echo "Done!"
