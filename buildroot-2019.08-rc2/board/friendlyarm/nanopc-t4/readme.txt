Intro
=====

NanoPc T4 is a RK3399 SoC based ARM64 board.

Official Wiki: http://wiki.friendlyarm.com/wiki/index.php/NanoPC-T4

Build
=====

Run NanoPc T4 configuration

  $ make nanopc_t4_defconfig

To build, run make comamnd.

  $ make

Files created in output directory
=================================

output/images/

├── bl31.bin
├── bl31.elf
├── Image
├── rk3399-nanopc-t4.dtb
├── rootfs.ext2
├── rootfs.ext4 -> rootfs.ext2
├── rootfs.tar
├── sdcard.img
├── u-boot.bin
├── u-boot.itb
├── u-boot-spl-dtb.bin
└── u-boot-spl-dtb.img

Creating bootable SD card:
=========================

Simply invoke (as root)

  # dd if=output/images/sdcard.img of=/dev/sdX && sync

Where X is your SD card device

Serial console
--------------

Baudrate for this board is 1500000
