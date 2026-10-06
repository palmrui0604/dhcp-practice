#!/usr/bin/env
set -xeu
mv -vf /etc/dhcp/dhcpd.conf.bak
cp -vf /vagrant/dhcpd.conf /etc/dhcp/dhcpd.conf
echo '# Configuration file copied'
systemctl restart isc-dhcp-server.service
dhcpd -t
dhcpd -d
