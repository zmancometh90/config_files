# Config Settings For Ubuntu

This is a work in progress as I expiriment with a Ubuntu config setup. All commands, unless specified are in the config.sh script. The font 0xProto is from [Nerd Fonts](https://www.nerdfonts.com/font-downloads).

## Software

1. [Ghostty](#ghostty)
2. [Chrome](#chrome)
3. [vscode](#vscode)
4. [Docker](#docker)
5. [Jetbrains-Toolbox](#jetbrains-toolbox)
6. [GTK Theme](#gtk)
7. [Application Dock](#application-dock)
8. [VLC Media Player](#vlc-media-player)
9. [Gimp](#gimp)
10. [Discord](#discord)

## Ghostty

```bash
sudo snap install ghostty --classic
# custom config file
cp ghostty ~/.config/ghosty/config
```

## Chrome

```bash
sudo apt intall wget
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb
```

## vscode

```bash
sudo snap install --classic code
```

## Docker

Taken from [link](https://docs.docker.com/engine/install/ubuntu/)

```bash
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
```

## Jetbrains-Toolbox

This is not in the config.sh script. Please run this manually.

Download from [link](https://www.jetbrains.com/toolbox-app/])

```bash
cd /opt
# replace the Xs with your version
sudo tar -xvzf ~/Downloads/jetbrains-toolbox-x.xx.xxxx.tar.gz
# optional but makes it an easier folder name
sudo mv jetbrains-toolbox-x.xx.xxxx jetbrains
jetbrains/bin/jetbrains-toolbox
```

## GTK

Download files here [here](https://draculatheme.com/gtk). Make sure to grab bot the theme and icon theme.

```bash
sudo apt install gnome-tweaks
sudo cp -r ~/Downloads/gtk-master /usr/share/themes/
sudo cp -r /usr/share/themes/gtk-master /usr/share/themes/Dracula
sudo rm -rf /usr/share/themes/gtk-master
unzip ~/Downloads/Dracula.zip -d /usr/share/icons/
gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"
gsettings set org.gnome.desktop.interface icon-theme "Dracula"
```

After installing set the theme in the gnome-tweaks application and set the themes.

## Application Dock

This is left out of the config.sh script. The command will remove the application dock.
The dock can always be added if it is not desired.

```bash
sudo apt remove gnome-shell-extension-ubuntu-dock
```

To add the dock back:

```bash
sudo apt install gnome-shell-extension-ubuntu-dock
```

## VLC Media Player

```bash
sudo apt install vlc -y
```

## Gimp

```bash
sudo apt install gimp -y
```

## Discord

```bash
sudo snap install discord -y
```