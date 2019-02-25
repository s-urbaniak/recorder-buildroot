#!/bin/sh

set -u
set -e
set -x

BOARD_DIR="$(dirname $0)"
BOARD_NAME="$(basename ${BOARD_DIR})"

for file in "config" "cmdline"; do
    install -D -m 0644 \
            "${BOARD_DIR}/${file}-${BOARD_NAME}.txt" \
            "${BINARIES_DIR}/rpi-firmware/${file}.txt"
done
