#!/bin/bash -ex

export PATH=~/avr-toolchain/bin:$PATH
unset ARCH
unset CROSS_COMPILE

if [[ ! -f avr-libc-1.8.0.tar.bz2 ]] ;
then
	wget http://download.savannah.gnu.org/releases/avr-libc/avr-libc-1.8.0.tar.bz2
fi

tar xjvf avr-libc-1.8.0.tar.bz2

cd avr-libc-1.8.0
#for p in ../avr-libc-patches/*.patch; do echo Applying $p; patch -p0 < $p; done
cd -

#cp avr-libc-patches/eeprom.h avr-libc-1.6.4/include/avr/eeprom.h

mkdir -p objdir
cd objdir
PREFIX=`pwd`
cd -

mkdir -p avr-libc-build
cd avr-libc-build

CONFARGS=" \
	--prefix=$PREFIX \
	--host=avr \
	--target=mips"

CC="avr-gcc" CXX="avr-g++" CFLAGS="-w -Os $CFLAGS" CXXFLAGS="-w -Os $CXXFLAGS" LDFLAGS="-s $LDFLAGS" ../avr-libc-1.8.0/configure $CONFARGS

if [ -z "$MAKE_JOBS" ]; then
	MAKE_JOBS="2"
fi

nice -n 10 make -j $MAKE_JOBS

make install