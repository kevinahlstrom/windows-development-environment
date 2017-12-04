#!/bin/bash

#install nodejs
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get -y update && sudo apt-get -y install build-essential nginx nodejs git awscli vim ack-grep exuberant-ctags ruby rake
sudo npm install -g serverless

#update bash and vi config
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh
bash-it enable alias git general
#curl -L https://bit.ly/janus-bootstrap | bash
#cat bash_profile_customization >> ~/.bash_profile
#curl -o .hyper.js 'https://raw.githubusercontent.com/dennisseidel/windows-development-environment/master/hyper.js'
sudo apt-get install autojump
bash-it enable plugin autojump

#add support for docker -> don't forget to disable TLS in the windows UI
# https://medium.com/software-development-stories/developing-a-dockerized-web-app-on-windows-subsystem-for-linux-wsl-61efec965080
sudo apt-get install apt-transport-https ca-certificates
sudo apt-key adv \
	--keyserver hkp://ha.pool.sks-keyservers.net:80 \
	--recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get install docker-engine
echo "export DOCKER_HOST=tcp://127.0.0.1:2375" >> ~/.bash_profile
sudo ln -s /mnt/c /c
