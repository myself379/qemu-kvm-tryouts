# Tryout for QEMU KVM on Android emulator

Problem faced

- Network (solved)
- Audio
- Microphone
- arm
- Unable to pass dGPU into vm

# Usage

Download image from android-x86.org. Android 9.0 will do

# ARM houdini guide

sometimes /system/bin/enable_nativebridge doesn't work properly due to DNS redirect issues

manually download [here](http://dl.android-x86.org/houdini/9_y/houdini.sfs)
put into `/sdcard/arm/houdini9_y.sfs`

run `/system/bin/enable_nativebridge`

To verify, check `/system/lib/houdini.so` is there

# qemu-ifup script

Refer to [here](https://wiki.qemu.org/Documentation/Networking/NAT)

be sure to `ip link delete br0` if you want to cleanup, or write a `/etc/qemu-ifdown`. It will be automatically run
