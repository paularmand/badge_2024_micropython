# badge_2024_micropython
The micropython codebase to support the Fri3dcamp 2024 badge

## Refs

+ Currently we have a N32R8, but we'll target a ESP32-S3-WROOM-1-N16R8 16 MB (Quad SPI) 8 MB (Octal SPI) 
+ Following the instructions at https://docs.micropython.org/en/latest/esp32/quickref.html
+ esptool : https://github.com/espressif/esptool
+ using the esp-idf 5.1 release at commit : https://github.com/espressif/esp-idf/commit/4bc762621db30f253742bd3c439f80500fda0fb0
+ https://badge.team/docs/esp32-platform-firmware/esp32-firmware-development/
+ we're using the BOARD_DIR env variable, added in front of the make file:
    ''' make BOARD_DIR=../../../boards/GENERIC_S3_SPIRAM_OCT2 BOARD=GENERIC_S3_SPIRAM_OCT2  '''
