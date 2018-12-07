#!/bin/sh

set -u
set -e
set -x

BOARD="/board/raspi/recorder"

for file in "config.txt" "cmdline.txt"; do
    install -D -m 0644 \
            "${BR2_EXTERNAL_RECORDER_PATH}${BOARD}/${file}" \
            "${BINARIES_DIR}/rpi-firmware/${file}"
done
