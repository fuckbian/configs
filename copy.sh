#!/bin/bash


NC='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'


if [[ "$(id -u)" != 0 ]]; then
  echo -e "${RED}E: Requires root permissions!${NC}" > /dev/stderr
  exit 1
fi

cp -r configs/etc/* /etc
cp -r configs/share/* /etc/share

echo -e "${GREEN}I: Done!${NC}"
