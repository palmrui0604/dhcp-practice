#!/usr/bin/env bash
set -xeu
export DEBIAN_FRONTEND=noninteractive
mv -vf /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.bak
cp -vf /vagrant/dhcpd.conf /etc/dhcp/dhcpd.conf
echo INTERFACES="eth2" >> /etc/default/isc-dhcp-server
echo '# Configuration files copied'
systemctl restart isc-dhcp-server.service
dhcpd -t
dhcpd -d
