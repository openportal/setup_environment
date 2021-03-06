#!/bin/bash
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade

sudo apt-get -y --force-yes install vim

sudo apt-get -y --force-yes install git-core

git config --global user.name "Robert Hintz"
git config --global user.email "roberthintz@stanford.edu"

sudo apt-get -y --force-yes install curl

sudo apt-get -y --force-yes install nginx-full

sudo apt-get -y --force-yes install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion pkg-config

sudo apt-get -y --force-yes install libpq-dev build-essential

sudo apt-get -y --force-yes install linux-headers-3.2.0-23-generic build-essential

sudo apt-get -y --force-yes install ruby1.9.1-dev

sudo apt-get -y --force-yes install curl git-core python-software-properties build-essential zlib1g-dev libssl-dev libreadline-gplv2-dev libcurl4-openssl-dev

sudo rm /etc/nginx/sites-enabled/default

sudo rm -rf ~/.rvm

curl -L https://get.rvm.io | bash -s stable --rails

if [[ -a ~/dotfiles || -d ~/dotfiles ]]
  then
    rm -rf ~/dotfiles
fi

git clone https://github.com/rhintz42/dotfiles.git ~/dotfiles

cd ~/dotfiles

bash ~/dotfiles/setup.sh

cd ~
