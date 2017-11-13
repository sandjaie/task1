#!/bin/bash
`which docker`
if [ $?  == 0 ]
then
  echo "docker is installed"
 else
  #Download the docker script
  echo "Installing Docker on the machine"
  yum install wget -y >> /dev/null
  wget -qO- https://get.docker.com/ | sh >> /dev/null
  #Add docker user
  usermod -aG docker $(whoami)
  #Enable and start Docker 
  systemctl enable docker.service
  systemctl start docker.service

  #Install docker-compose
  echo "Installing pip"
  yum install -y epel-release >> /dev/null
  yum install -y python-pip >> /dev/null
  pip install --upgrade pip  >> /dev/null

  echo "Installing docker-compose on the machine"
  pip install docker-compose >> /dev/null
  yum upgrade python* >> /dev/null
  #Extras
  yum install net-tools -y >> /dev/null
fi

echo "Copy hosts file"
cp /tmp/hosts /etc /hosts
echo "Docker Status"
systemctl status docker.service | grep Active

#Calling the script which starts the container
$DOCKER_SETUP="./docker_setup/docker_script.sh"
"$DOCKER_SETUP"