#!/bin/bash
echo "Model: $(sudo dmidecode -s system-product-name)" > metadata.txt
echo "Board: $(sudo dmidecode -s baseboard-product-name)" >> metadata.txt
echo "Serial: $(sudo dmidecode -s system-serial-number)" >> metadata.txt
echo "BIOS Version: $(sudo dmidecode -s bios-version)" >> metadata.txt
echo "BIOS Date: $(sudo dmidecode -s bios-release-date)" >> metadata.txt
echo "Backup date: $(date -u +"%Y-%m-%d %H:%M:%S UTC")" >> metadata.txt
sha256sum backup.bin >> metadata.txt
