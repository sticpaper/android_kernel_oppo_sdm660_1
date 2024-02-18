#!/bin/bash
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=/mnt/mpaper/gcc4.9/bin/aarch64-linux-androidkernel-
export OPPO_TARGET_DEVICE="MSM_17011"
export KBUILD_BUILD_VERSION="0"

make O=out sdm660-perf_defconfig

cd out

make O=out -j24
