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

cat \
    ${BOARD_DIR}/rootfs-overlay/etc/wpa_supplicant/wpa_supplicant-nl80211-wlan0.conf \
    ${BOARD_DIR}/networks.conf \
    >${TARGET_DIR}/etc/wpa_supplicant/wpa_supplicant-nl80211-wlan0.conf
