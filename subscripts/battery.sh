#!/bin/bash

echo "(CPU Governor)"
sudo cpupower frequency-set -g powersave 2>/dev/null

echo "battery mode enabled."
exit
