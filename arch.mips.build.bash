#!/bin/bash
export BUILD_TOPDIR=$PWD
export STAGING_DIR=$BUILD_TOPDIR/tmp

export ARCH=mips CROSS_COMPILE=mips-openwrt-linux-
export PATH=$BUILD_TOPDIR/toolchain/bin:$PATH

./build.all-mips.bash

rm -f avr-toolchain-*.zip
cd objdir
zip -r -9 ../avr-toolchain-mips-gcc-4.3.2.zip .
