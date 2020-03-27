#!/bin/sh

set -u
set -e
BOARD_DIR="$(dirname $0)"
BOARD_NAME="$(basename ${BOARD_DIR})"



echo 'creating boot scr file'
mkimage -C none -A arm64 -T script -d ${BOARD_DIR}/boot.cmd ${BOARD_DIR}/bootfiles/boot.scr
echo 'done'
cp -a ${BOARD_DIR}/bootfiles/* ${BINARIES_DIR}/

echo 'copied board files'


#echo "connmand:270:respawn:start-stop-daemon -S -q -m -b -p /var/run/connmand.pid --exec /usr/sbin/connmand -- -n" >> ${TARGET_DIR}/etc/dbus-1/session.conf


#echo "connmand:270:respawn:start-stop-daemon -S -q -m -b -p /var/run/connmand.pid --exec /usr/sbin/connmand -- -n" >> ${TARGET_DIR}/etc/inittab 

#echo 'tuned inittab'