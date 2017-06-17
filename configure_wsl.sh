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
curl -o .hyper.js 'https://raw.githubusercontent.com/dennisseidel/windows-development-environment/master/hyper.js'
sudo apt-get install autojump
bash-it enable plugin autojump