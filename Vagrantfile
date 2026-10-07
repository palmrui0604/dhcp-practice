# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|

    config.vm.box = "debian/bookworm64"    

    config.vm.define "srv" do |srv|

	srv.vm.network "public_network", bridge: "enp4s0"
	srv.vm.network "private_network",
	ip: "192.168.57.10",
	virtualbox__intnet: "intnet"
    srv.vm.provision "install_DHCP_server",
        type: "shell",
        path: "scripts/01_install_DHCP_server.sh"
    srv.vm.provision "configure_DHCP_server",
        type: "shell",
        path: "scripts/02_configure_DHCP.sh"
end

    config.vm.define "c1" do |c1|
    c1.vm.network "private_network",
    type: "dhcp",
    virtualbox__intnet: "intnet"
end

    config.vm.define "printer" do |printer|
    printer.vm.network "private_network",
    mac: "0800278dc04d",
    type: "dhcp",
    virtualbox__intnet: "intnet"
end

end
