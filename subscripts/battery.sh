#!/bin/bash

sudo cpupower frequency-set -g powersave 2>/dev/null
sudo tee /sys/bus/usb/devices/*/power/control >/dev/null 2>&1
sudo tee proc/sys/vm/swappiness/ >/dev/null

echo "battery mode enabled."
