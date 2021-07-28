#!/bin/sh

set -xe

HDA_IMAGE="$1";

ARGS=(-enable-kvm
    -smp 2
    -cpu host
    -m 8096
    -name linuz-game-1
    -device virtio-vga,virgl=on,xres=1280,yres=720
    -device virtio-mouse-pci
    -device virtio-keyboard-pci
    -device virtio-tablet
    -device AC97
    -net tap
    -net nic
    -machine type=q35
    -serial mon:stdio
    -display gtk,gl=on
    # -display sdl,gl=on
    -boot c
    -hda "$HDA_IMAGE"
);

shift


qemu-system-x86_64 ${ARGS[@]}
