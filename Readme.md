# NZXT H1 OpenCore 
Hackintosh EFI/Kexts for NZXT-H1 AMD Ryzen 5 3600 Mhz/AsRock X570 Phantom Gaming/3600 Mhz DDR4 32GB with NVidia Titan Black Kepler GPU for Apple Big Sur.

### Hardware
Aforementioned SSDT/Kexts installer for the following hardware.
* AMD Ryzen 5 3600 6-Core Processor
* X570 Phantom Gaming-ITX/TB3
* SMBIOS 3.2.0
* Intel Wi-Fi 6 AX200
* Intel I211 Gigabit Network Connection
* ADATA XPG SX8200 Pro PCIe Gen3x4 M.2 2280 Solid State Drive, ADATA SX8200PNP
* ALC1220 Analog [ALC1220 Analog]
* ALC1220 Digital [ALC1220 Digital]
* AMD FCH SATA Controller [AHCI mode]
* NVidia Titan Black (Kepler)

### Linux Commands 
Summary of system hardware prior to the install.

```bash
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
```

### Disclaimer
`It works swell, and it is possible to use this config blindly. However, this comes with no-tech support.`

