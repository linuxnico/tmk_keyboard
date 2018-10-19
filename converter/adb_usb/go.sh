#!/bin/bash
export PATH=$PATH:/home/nico/.arduino15/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/
make -f Makefile.rev1 clean
make -f Makefile.rev1 KEYMAP=ansi

/home/nico/.arduino15/packages/arduino/tools/avrdude/6.3.0-arduino9/bin/avrdude -C /home/nico/.arduino15/packages/arduino/tools/avrdude/6.3.0-arduino9/etc/avrdude.conf -vvv -patmega32u4 -cavr109 -P /dev/ttyACM0 -b57600 -D -V -Uflash:w:adb_usb_rev1.hex:i


