#!/usr/bin/env
set -xeu
mv -vf /etc/dhcp/dhcpd.conf.bak
cp -vf /vagrant/dhcpd.conf /etc/dhcp/dhcpd.conf
cp -vf /vagrant/isc-dhcp-server /etc/default/isc-dhcp-server
echo '# Configuration files copied'
systemctl restart isc-dhcp-server.service
dhcpd -t
dhcpd -d
