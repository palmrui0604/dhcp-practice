# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
	config.vm.box = "debian/bookworm64"
	config.vm.network "public_network", bridge: "enp4s0"
	config.vm.network "private_network",
	ip: "192.168.57.10",
	virtualbox__intnet: "intnet"
    config.vm.provision "install_DHCP_server",
        type: "shell",
        path: "scripts/01_install_DHCP_server.sh"
    config.vm.provision "configure_DHCP_server",
        type: "shell",
        path: "scripts/02_configure_DHCP_server.sh"
end
