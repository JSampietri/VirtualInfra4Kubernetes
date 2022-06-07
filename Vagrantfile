Vagrant.configure("2") do |config|
	config.vm.box = "ubuntu/bionic64"
	config.vm.provider "virtualbox" do |vb|
		vb.memory = 3096
		vb.cpus = 3
	end
	config.vm.define "common-services" do |cms|
		cms.vm.network "private_network", ip: "192.168.56.10"
		cms.vm.provider "virtualbox" do |vb|
			vb.memory = 1024
			vb.cpus = 1
			vb.name = "common-services"
		end
		cms.vm.provision "shell",
			inline: "apt-get update"
		cms.vm.provision "shell", 
			inline: "apt-get install -y bind9"
		cms.vm.provision "shell", 
			inline: "cp /vagrant/dns/* /etc/bind/"
		cms.vm.provision "shell",
			inline: "systemctl restart bind9"
		cms.vm.provision "shell",
			inline: "systemctl status bind9"
		cms.vm.provision "shell",
			inline: "apt-get install -y resolvconf"
		cms.vm.provision "shell",
			inline: "cat /vagrant/resolv/head >> /etc/resolvconf/resolv.conf.d/head"
		cms.vm.provision "shell",
			inline: "systemctl restart resolvconf"
		cms.vm.provision "shell",
			inline: "systemctl restart systemd-resolved"
		
	end

	config.vm.define "rancher" do |rcr|
		rcr.vm.network "private_network", ip: "192.168.56.11"
		rcr.vm.provider "virtualbox" do |vb|
			vb.name = "rancher"
		end
		rcr.vm.provision "shell",
			inline: "apt-get update"
		rcr.vm.provision "shell",
			inline: "apt-get install -y resolvconf"
		rcr.vm.provision "shell",
			inline: "cat /vagrant/resolv/head >> /etc/resolvconf/resolv.conf.d/head"
		rcr.vm.provision "shell",
			inline: "systemctl restart resolvconf"
		rcr.vm.provision "shell",
			inline: "systemctl restart systemd-resolved"
	end

	config.vm.define "worker1" do |wkr1|
		wkr1.vm.network "private_network", ip: "192.168.56.12"
		wkr1.vm.provider "virtualbox" do |vb|
			vb.name = "worker1"
		end
		wkr1.vm.provision "shell",
			inline: "apt-get update"
		wkr1.vm.provision "shell",
			inline: "apt-get install -y resolvconf"
		wkr1.vm.provision "shell",
			inline: "cat /vagrant/resolv/head >> /etc/resolvconf/resolv.conf.d/head"
		wkr1.vm.provision "shell",
			inline: "systemctl restart resolvconf"
		wkr1.vm.provision "shell",
			inline: "systemctl restart systemd-resolved"
	end

	config.vm.define "worker2" do |wkr2|
		wkr2.vm.network "private_network", ip: "192.168.56.13"
		wkr2.vm.provider "virtualbox" do |vb|
			vb.name = "worker2"
		end
		wkr2.vm.provision "shell",
			inline: "apt-get update"
		wkr2.vm.provision "shell",
			inline: "apt-get install -y resolvconf"
		wkr2.vm.provision "shell",
			inline: "cat /vagrant/resolv/head >> /etc/resolvconf/resolv.conf.d/head"
		wkr2.vm.provision "shell",
			inline: "systemctl restart resolvconf"
		wkr2.vm.provision "shell",
			inline: "systemctl restart systemd-resolved"
	end

	config.vm.define "worker3" do |wkr3|
		wkr3.vm.network "private_network", ip: "192.168.56.14"
		wkr3.vm.provider "virtualbox" do |vb|
			vb.name = "worker3"
		end
		wkr3.vm.provision "shell",
			inline: "apt-get update"
		wkr3.vm.provision "shell",
			inline: "apt-get install -y resolvconf"
		wkr3.vm.provision "shell",
			inline: "cat /vagrant/resolv/head >> /etc/resolvconf/resolv.conf.d/head"
		wkr3.vm.provision "shell",
			inline: "systemctl restart resolvconf"
		wkr3.vm.provision "shell",
			inline: "systemctl restart systemd-resolved"
	end
end
