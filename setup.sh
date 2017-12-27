#!/bin/sh

#run after changing permissions by using 'chmod u+x' on this file

# add PPAs
sudo add-apt-repository ppa:webupd8team/brackets -y
sudo add-apt-repository ppa:budgie-remix/ppa -y
sudo add-apt-repository ppa:webupd8team/atom -y
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y

# update after adding PPAs
sudo apt-get update

############################## UI ##############################
# budgie-remix
sudo apt install budgie-desktop-environment -y

# guake terminal
sudo apt-get install guake -y

# cairo-dock
sudo apt-get install cairo-dock -y

# ultra-flat orange icons
cd && wget -O Ultra-Flat-Orange.deb https://launchpad.net/~noobslab/+archive/ubuntu/icons/+files/ultra-flat-icons-orange_1.3.2~trusty~Noobslab.com_all.deb
sudo dpkg -i Ultra-Flat-Orange.deb;rm Ultra-Flat-Orange.deb

# tweak tool
sudo apt-get install gnome-tweak-tool -y

# macubuntu icons
############################## / UI ##############################

############################## Text editors ##############################
# brackets
sudo apt-get install brackets -y

# atom
sudo apt-get install atom -y

# sublime-text-installer
sudo apt-get install sublime-text-installer -y
############################## / Text editors ##############################

############################## Graphics and Image editing ##############################
# sudo apt-get install gimp -y
# sudo apt-get install darktable -y
# sudo apt-get install inkscape -y
############################## / Graphics and Image editing ##############################

# pip
sudo apt-get install python-pip -y
sudo apt-get install python-dev -y

# virtualenv
sudo pip install virtualenv

# synaptic
sudo apt-get install synaptic -y

