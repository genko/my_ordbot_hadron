# My OrdBot Hadron Configuration for Marlin V1.1.0-RC8
---
## 1. Hardware Setup
* Ordbot Hadron Hardware Kit with motors, rails and endstops
* Ramps 1.4 Kit with Taurion Arduino clone
* E3D Titan Aero Extruder
* E3D v6 1.7mm direct drive with silicon sock
* Full graphical LCD
* Prusa mini clone heated bed

## 2. Setup after flashing

* Reset Z-Offset with command "M851 Z0"
* Home all axis with "G28"
* Go to Z0 with "G1 Z0"
* Now use a piece of paper under the hotend and slowly go lower with -0.1 steps for Z-Axis, so start with "G1 Z-0.1"
* When the paper starts to bind with the hotend note down the current Z-Offset
* Save Z-Offset with "M851 Z\<actual Value\>" (with steel sheet it was -0.6)
* Save current values to EEPROM with "M500"
* Test mesh bed leveling with G29

## 3. Change startup-code in slicer

G28

G29

## 3. Warning

Thermal runaway protection for heatbed was set to timeout only after 10 minutes
if temperature did not rise during this 10 minutes by 2 dregre celsius. Default was 1 minute.
