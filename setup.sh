#!/bin/sh

#run after changing permissions by using 'chmod u+x' on this file

# add PPAs
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y

# update after adding PPAs
sudo apt-get update

sudo apt-get install chrome-gnome-shell

# tweak tool
sudo apt-get install gnome-tweak-tool -y

# sublime-text-installer
sudo apt-get install sublime-text-installer -y

# todo install anaconda 
# todo install adapta theme
# todo install oranchelo icon theme
# todo do deep learning setup using this guide: https://www.pugetsystems.com/labs/hpc/Install-TensorFlow-with-GPU-Support-the-Easy-Way-on-Ubuntu-18-04-without-installing-CUDA-1170/
# todo install npm
# todo install java
