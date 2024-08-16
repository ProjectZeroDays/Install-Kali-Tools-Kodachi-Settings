#!/bin/bash 
#
# Repo:
# Install-Kali-Tools-Kodachi-Settings
# 
# Description:
# Configurations To Add Kali Linux Tools & Setup Kodachi's Privacy & Anonyminity Settings On Debian/Kali/Ubuntu Distros
# 
# Source:
# https://github.com/ProjectZeroDays/Install-Kali-Tools-Kodachi-Settings
# 
# Developer:
# Ez'ra - Project Zero
#
# Developer Github:
# https://github.com/ProjectZeroDays/
# 
# ________________________________________________________________________________________________________________________

# Update APT
sudo apt update

# Upgrade PKGs
sudo apt -y update

# Upgrade System
sudo apt -y full-grade

# Upgrade Distribution
sudo apt -y dist-upgrade

# Install Dependencies
sudo apt install wget gdebi python3 curl bash ruby golang go rust yarn nodejs nvm npm

# Adds Kali Keyring to Debian or Ubuntu Linux Distros to Install Kali Linux Tools


# Adds Kali Sources to Debian or Ubuntu Linux Distros


# Install Kali-Linux-Everything Tools Repo
sudo apt update
sudo apt install kali-linux-everything

# Update System 
sudo apt update
sudo apt -y full-upgrade
sudo apt -y dist-upgrade

# Install and enable OpenSSH Server
sudo apt update
sudo apt install openssh-server

# to see if installed use:
sudo apt list openssh-server

# Start OpenSSH Service:
sudo systemctl start ssh

# Enable OpenSSH:
sudo systemctl enable ssh

# Confirm Service Status:
sudo systemctl status ssh 

# You can also temporarily start the SSH service by running: 
  # systemctl start ssh.socket

# To stop the SSH service, you can run:
  # systemctl stop ssh.service

# To disable SSH, you can run: 
  # systemctl disable ssh.service

# Download & Install REAL VNC Viewer
wget https://downloads.realvnc.com/download/file/viewer.files/VNC-Viewer
sudo gdebi VNC-Viewer-7.12.0-Linux-x64.deb

# Download & Install REAL VNC Connect (Server)
wget https://downloads.realvnc.com/download/file/vnc.files/VNC-Server
sudo gdebi VNC-Server-7.12.0-Linux-x64.deb

# Installed systemd unit for VNC Viewer in Service Mode daemon to start the service with:
sudo systemctl start vncviewer-x11-serviced.service

# Installed systemd unit for VNC Server in Service Mode daemon to start the service with:
sudo systemctl start vncserver-x11-serviced.service

  # To stop the VNC Viewer Service use:
  #systemctl start vncviewer-x11-serviced.service

  # To stop the VNC Server Service use:
  #systemctl start vncserver-x11-serviced.service

# Mark the VNC Viewer Service to be started at boot time with:
sudo systemctl enable vncviewer-x11-serviced.service

# Mark the VNV Server Service to be started at boot time with:
sudo systemctl enable vncserver-x11-serviced.service

# Installs Balena Etcher:
wget -o- https://github.com/balena-io/etcher/releases/download/v1.19.22/balena-etcher_1.19.22_amd64.deb
sudo gdebi balena-etcher_1.19.22_amd64.deb

# Installs Latest Version of Powershell:
wget -o- https://github.com/PowerShell/PowerShell/releases/download/v7.4.4/powershell-lts_7.4.4-1.deb_amd64.deb
sudo gdebi powershell-lts_7.4.4-1.deb_amd64.deb

# Installs Homebrew:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Updating System
sudo apt-get update

# Installs Sniper
git clone https://github.com/1N3/Sn1per
cd sn1per
bash install.sh

 
