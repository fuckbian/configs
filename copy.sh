#!/bin/bash


RED='\033[0;31m'
GREEN='\033[0;32m'


if [[ "$(id -u)" != 0 ]]; then
  echo -e "${RED}E: Requires root permissions!${NC}" > /dev/stderr
  exit 1
fi

cd ..

chroot sid-chroot cp configs/etc/* /etc
chroot sid-chroot cp configs/share/* /usr/share

echo -e "${GREEN}I: Done!${NC}"
