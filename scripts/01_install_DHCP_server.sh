#!/usr/bin/env bash
apt update && apt upgrade -y
apt install isc-dhcp-server

echo '# DHCP server installed'
