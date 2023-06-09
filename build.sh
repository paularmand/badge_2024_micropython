#!/bin/bash

# todo: put this in a Makefile instead?
set -e

basedir=$(dirname "$0")
CUR_DIR=$(cd "${basedir}"; pwd -P)
BOARD_DIR="${CUR_DIR}/boards"
MP_DIR="${CUR_DIR}/micropython"
MP_ESP_PORT_DIR="${MP_DIR}/ports/esp32"
export IDF_PATH="${CUR_DIR}/esp-idf"

# make sure all git submodules are checked out
# git submodule update --init --recursive

# install toolchain and dependencies for esp-idf
${IDF_PATH}/install.sh

# export environment variables for esp-idf toolchain and tools
source "${IDF_PATH}/export.sh"

# now we can start building micropython for esp32
# build cross compiler
make -C ${MP_DIR}/mpy-cross/
make -C ${MP_ESP_PORT_DIR} submodules
make -C ${MP_ESP_PORT_DIR} BOARD_DIR=${BOARD_DIR}/FRI3D_BADGE_2024 BOARD=FRI3D_BADGE_2024
