#!/bin/sh

set -u
set -e
BOARD_DIR="$(dirname $0)"
BOARD_NAME="$(basename ${BOARD_DIR})"

echo 'Copying selfik specific files'

cp -a ${BOARD_DIR}/../rootfs-additions/* ${TARGET_DIR}/

echo 'done'

chmod a+x ${TARGET_DIR}/etc/init.d/S90enableselfik

echo 'permissions set'