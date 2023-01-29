#!/usr/bin/bash

echo "Installing Python virtual environments..."

pip3 install virtualenv virtualenvwrapper
if ! grep -q "#Virtualenvwrapper settings" ; then
    cat config/venvrc.j2 >> $HOME/.bashrc
    source $HOME/.bashrc
fi
mkvirtualenv main
workon main

echo "Installing Jinja..."

pip3 install Jinja2

echo "Installed Jinja2 ✅"

echo "Installing Visual Studio Code..."

sudo apt update
sudo apt install code

echo "Installed Visual Studio Code ✅"

echo "Installing smtp client..."

sudo apt-get install msmtp msmtp-mta --assume-yes
sudo cp config/msmtprc.j2 /etc/msmtprc

echo "Installed smtp client ✅"

echo "Installed all applications"