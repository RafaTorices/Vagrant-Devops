#!/bin/bash
# Update the system
apt-get update
# Install python
apt-get install -y python3
# Install pip
apt-get install -y python3-pip
# Install virtualenv
python3 -m pip install virtualenv
# alias python=python3
echo "alias python=python3" >>~/.bashrc
source ~/.bashrc
