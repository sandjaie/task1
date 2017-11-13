# Task1
## Prerequisites on a Ubuntu: 

### Install Ruby (>= 2.2) 
`sudo apt-get install ruby`

### Install Vagrant

Download: 
`wget https://releases.hashicorp.com/vagrant/2.0.1/vagrant_2.0.1_x86_64.deb`

Install: 
`dpkg -i vagrant_2.0.1_x86_64.deb`

### VirtualBox Setup:
#### Add to sources.list: 
`echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" | sudo tee /etc/apt/sources.list.d/virtual-box.list`

#### Add the apt-key:
`wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -`
`wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -`

#### Install VirtualBox: 
`sudo apt-get install virtualbox-5.2`
#### Install kernel modules for Virtualbox:
`sudo apt-get install dkms`
#### Recompile Virtualbox if needed:
`sudo /sbin/vboxconfig`

### How to run:
Clone the repo to your machine `git clone https://github.com/sandjaie/task1.git` and run `vagrant up`
 - Which will install a VM in virtualbox(centos) and install docker and docker-compose in the VM
 - And triggers the docker_script.sh file which deploys the container with port 80 exposed
 - To deploy the container we can either use docker_script or docker-compose (needs an edit in the script)


#### File Structure:
```||-- README.md
|-- Vagrantfile
|-- box_setup
|   `-- initial_setup.sh
|-- docker_setup
|   |-- Dockerfile
|   |-- docker-compose.yml
|   |-- docker_files
|   |   |-- 1.html
|   |   |-- 2.html
|   |   |-- 3.html
|   |   |-- myfirstpage.com
|   |   |-- mysecondpage.com
|   |   |-- mythirdpage.com
|   |   `-- nginx.conf
|   `-- docker_script.sh
`-- files
    `-- hosts

