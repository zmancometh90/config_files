#!/bin/bash

sudo apt update
sudo apt upgrade -y

# Install fonts
cp -r 0xProto ~/.fonts
fc-cache -fv

# bashr
cp bashrc ~/.bashrc

# Ghostty
sudo snap install ghostty --classic
cp ghostty ~/.config/ghosty/config

# Chrome
sudo apt intall wget
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb

# vscode
sudo snap install --classic code

# docker (from https://docs.docker.com/engine/install/ubuntu/)
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc


echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y