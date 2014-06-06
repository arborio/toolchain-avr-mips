toolchain-avr-mips
==================

NOTE: Build scripts for creating an avr toolchain for mips and OpenWRT.  This is based on toolchain-avr from the Arduino IDE. View the Readme @ https://github.com/arduino/toolchain-avr for more information.

Setup and Compile
-----------------

To compile gcc-avr for mips you will need a Linux build environment, OpenWRT mips toolchain and avr-gcc for your host environment.

[OpenWRT 12.09 ar71xx toolchain](http://downloads.openwrt.org/attitude_adjustment/12.09/ar71xx/generic/ "OpenWRT 12.09 ar71xx toolchain")

[AVR Toolchain](https://github.com/arduino/toolchain-avr "Arduino avr-toolchain")

Download the OpenWRT toolchain, unpack and move the inside toolchain directory to your toolchain-avr-mips build root as toolchain.
Run arch.mips.buid.bash to compile.

