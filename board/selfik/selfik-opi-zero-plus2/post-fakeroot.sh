#!/bin/sh

set -u
set -e
BOARD_DIR="$(dirname $0)"
BOARD_NAME="$(basename ${BOARD_DIR})"

echo 'correcting brcmfmac driver (replace of default with ap6212/fw_bcm43438a1.bin)'

mv ${TARGET_DIR}/usr/lib/firmware/brcm/brcmfmac43430-sdio.bin ${TARGET_DIR}/usr/lib/firmware/brcm/brcmfmac43430-sdio.binold
cp ${TARGET_DIR}/usr/lib/firmware/ap6212/fw_bcm43438a1.bin ${TARGET_DIR}/usr/lib/firmware/brcm/brcmfmac43430-sdio.bin

echo 'Copying selfik specific files'

cp -a ${BOARD_DIR}/../rootfs-additions/* ${TARGET_DIR}/

echo 'done'

chmod a+x ${TARGET_DIR}/etc/init.d/S03modules
chmod a+x ${TARGET_DIR}/etc/init.d/S99enableselfik

echo 'permissions set'

