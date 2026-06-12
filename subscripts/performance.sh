#!/bin/bash

echo "(CPU Governor)"
sudo cpupower frequency-set -g performance

echo "(Enable Agressive RAM Usage)"
echo 90 | sudo tee /proc/sys/vm/swappiness

echo "(Reduce Disk Write Delay for ZRAM)"
echo 10 | sudo tee /proc/sys/vm/dirty_ratio
echo 5 | sudo tee /proc/sys/vm/dirty_background_ratio

echo "Performance Mode Enabled"
