setup_environment
=================

This repository is meant to setup an existing or a new environment

HOW TO USE
----------------
In this directory, issue this command:
  
  bash ubuntu_setup.sh

Then, when prompted (There should be a lot of prompts) enter 'Y' for each and press enter

After that install is finished, Add this to the end of your ~/.bashrc file:

  source ~/.rvm/scripts/rvm

Then, reload your .bashrc file with this command:

  source ~/.bashrc

Then, install all the gems you want into rails

  gem install sass
