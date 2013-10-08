#!/bin/bash
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install vim

sudo apt-get install git-core

git config --global user.name "Robert Hintz"
git config --global user.email "roberthintz@stanford.edu"

sudo apt-get install curl

sudo apt-get install nginx-full

sudo rm /etc/nginx/sites-enabled/default

curl -L https://get.rvm.io | bash -s stable --rails

source /home/ubuntu/.rvm/scripts/rvm

if [[ -a ~/dotfiles || -d ~/dotfiles ]]
  then
    rm -rf ~/dotfiles
fi

git clone https://github.com/rhintz42/dotfiles.git ~/dotfiles

cd ~/dotfiles

bash ~/dotfiles/setup.sh

cd ~
