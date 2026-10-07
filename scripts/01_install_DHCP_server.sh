#!/usr/bin/env bash
set -xeu
apt update && apt upgrade -y
apt install isc-dhcp-server -y

echo '# DHCP server installed'
