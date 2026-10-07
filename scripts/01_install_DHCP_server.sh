#!/usr/bin/env bash
set -xeu
export DEBIAN_FRONTEND=noninteractive
apt update && apt upgrade -y
apt install isc-dhcp-server -y

echo '# DHCP server installed'
