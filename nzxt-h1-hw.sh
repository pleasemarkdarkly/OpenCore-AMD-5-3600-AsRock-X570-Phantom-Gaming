#!/usr/bin/env bash

hw=(
"cat /proc/cpuinfo | grep 'model name'"
"lspci | grep -i --color 'vga\|3d\|2d'"
"dmidecode -t baseboard"
"dmesg |grep -i 'input'"
"aplay -l"
"lspci | grep -i 'network'"
"lshw -class network"
"lshw -class disk -class storage"
)

for i in "${hw[@]}"
do
  $i >> '\n' >> open-core-hw-output.txt
done
