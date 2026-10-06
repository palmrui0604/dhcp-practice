# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
    config.vm.define "srv" do |srv|
	srv.vm.box = "debian/bookworm64"
	srv.vm.network "public_network", bridge: "enp4s0"
	srv.vm.network "private_network",
	ip: "192.168.57.10",
	virtualbox__intnet: "intnet"
    srv.vm.provision "install_DHCP_server",
        type: "shell",
        path: "scripts/01_install_DHCP_server.sh"
    srv.vm.provision "configure_DHCP_server",
        type: "shell",
        path: "scripts/02_configure_DHCP_server.sh"
end

    config.vm.define "c1" do |c1|
    c1.vm.box = "debian/bookworm64"
    c1.vm.network "private_network",
    virtualbox__intnet: "intnet"
end
