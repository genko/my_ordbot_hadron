#!/bin/bash
arduino-cli core update-index
arduino-cli core install arduino:avr
arduino-cli lib install u8glib
arduino-cli compile -v --fqbn arduino:avr:mega:cpu=atmega2560 Marlin/Marlin
arduino-cli upload -v -p /dev/ttyACM0 --fqbn arduino:avr:mega:cpu=atmega2560 Marlin/Marlin
