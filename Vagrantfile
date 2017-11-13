Vagrant.configure("2") do |config|
	config.vm.box = "centos/7"
	config.vm.provider "virtualbox" do |vb|
        vb.name = "centos04"
        vb.customize ["modifyvm", :id, "--memory", "2048"]
    end
    config.vm.provision "file", source: "./docker_setup/Dockerfile", destination: "/home/vagrant/Dockerfile"
    config.vm.provision "file", source: "./files/hosts", destination: "/tmp/hosts"
    config.vm.provision "shell" do |sh|
    	sh.path = "box_setup/initial_setup.sh"
    end
end
