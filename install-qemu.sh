#!/bin/sh

set -xe

qemu-img create -f qcow2 "$2" 20G

RUN_ARGS=(-enable-kvm
   -vga std
   -m 4096
   -smp 2
   -cpu host
   -soundhw ac97
   -net nic,model=e1000
   -net user
   -cdrom "$1"
   -hda "$2"
   -boot d
   -monitor stdio
);

qemu-system-x86_64 ${RUN_ARGS[@]}
