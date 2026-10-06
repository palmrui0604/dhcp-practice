#!/usr/bin/env bash
set -xeu
apt update && apt upgrade -y
apt install isc-dhcp-server

echo '# DHCP server installed'
