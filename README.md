# badge_2024_micropython
The micropython codebase to support the Fri3dcamp 2024 badge

## Building
Clone this repo and update all submodules recursively:
```
git submodule update --init --recursive
```

Then run the build script:
```
./build.sh
```

todo: make a Makefile instead and make the board configurable, and create flash targets

## Refs

+ Currently we have a N32R8, but we'll target a ESP32-S3-WROOM-1-N16R8 16 MB (Quad SPI) 8 MB (Octal SPI)
+ Following the instructions at https://docs.micropython.org/en/latest/esp32/quickref.html
+ esptool : https://github.com/espressif/esptool
+ using the esp-idf v4.4.4 release and micropython v1.20.0
+ https://badge.team/docs/esp32-platform-firmware/esp32-firmware-development/
+ we're using the BOARD_DIR env variable, added in front of the make file:
    ''' make BOARD_DIR=../../../boards/FRI3D_BADGE_2024 BOARD=FRI3D_BADGE_2024  '''
