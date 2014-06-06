#!/bin/bash -ex

rm -rf objdir

./clean.bash
./binutils.build-mips.bash
./clean.bash
./gcc.build-mips.bash
./clean.bash
./libc.build-mips.bash
./clean.bash
