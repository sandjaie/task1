Vagrant.configure("2") do |config|
	config.vm.box = "centos/7"
	config.vm.provider "virtualbox" do |vb|
        vb.name = "centos03"
        vb.customize ["modifyvm", :id, "--memory", "4096"]
    end
    config.vm.provision "file", source: "./docker_setup/Dockerfile", destination: "/home/vagrant/Dockerfile"
    config.vm.provision "file", source: "./files/hosts", destination: "/etc/hosts"
    config.vm.provision "shell" do |sh|
    	sh.path = "box_setup/initial_setup.sh"
    end
end