#!/bin/bash


RED='\033[0;31m'
GREEN='\033[0;32m'


if [[ "$(id -u)" != 0 ]]; then
  echo -e "${RED}E: Requires root permissions!${NC}" > /dev/stderr
  exit 1
fi

cd ..

chroot sid-chroot/etc cp configs/etc/* .
chroot sid-chroot/usr/share cp configs/share/* .

echo -e "${GREEN}I: Done!${NC}"
