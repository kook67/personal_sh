#!/usr/bin/env bash

# created by Robert Ward rob.ward78.3@gmail.com
# (c) Robert Ward 2025
# please note this script is a work in progress
# working out a workaround for apt-key issues

# check system for updates

sudo apt update

# upgrade the system

sudo apt update && sudo apt full-upgrade -y 

# install extras

sudo apt update && sudo apt install --install-suggests --install-recommends -y inetutils-tools moreutils gedit* gpart* net-tools wget* curl libdvd*

# add google chrome repository

# wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
    
# install google chrome stable
    
# sudo apt update && sudo apt install google-chrome-stable --install-recommends --install-suggests -y

# add Opera Browser Repo

# sudo sh -c 'echo "deb http://deb.opera.com/opera/ stable non-free" >> /etc/apt/sources.list.d/opera.list' && sudo sh -c 'wget -O - http://deb.opera.com/archive.key | apt-key add -' && sudo apt update && sudo apt install opera --install-suggests --install-recommends -y

# reupdate

sudo apt update && sudo apt full-upgrade -y 

# system cleanup

# sudo apt autoremove --purge -y 

sudo apt clean

# reboot system

sudo reboot 0
