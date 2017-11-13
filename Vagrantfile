Vagrant.configure("2") do |config|
	config.vm.box = "centos/7"
	config.vm.provider "virtualbox" do |vb|
        vb.name = "centos04"
        vb.customize ["modifyvm", :id, "--memory", "2048"]
    end
    config.vm.provision "file", source: "./docker_setup/Dockerfile", destination: "/home/vagrant/Dockerfile"
    config.vm.provision "file", source: "./docker_setup/docker_script.sh", destination: "/home/vagrant/docker_script.sh"
    config.vm.provision "file", source: "./docker_setup/docker_files", destination: "/home/vagrant/docker_files"
    config.vm.provision "file", source: "./files/hosts", destination: "/tmp/hosts"
    config.vm.provision "shell", path: "box_setup/initial_setup.sh"
    config.vm.provision "shell", path: "docker_setup/docker_script.sh"
end