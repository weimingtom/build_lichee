#!/bin/bash 
# clone linux. Config linux. Build linux. Copy zImage to output
git clone --depth=1 -b f1c100s-480272lcd-test https://github.com/Icenowy/linux.git && \
cd linux && \
wget https://raw.githubusercontent.com/291700351/build_lichee/master/linux.config -O .config && \
make ARCH=arm menuconfig && \
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j8 && \
cd .. && \
cp linux/arch/arm/boot/zImage ./output/zImage

