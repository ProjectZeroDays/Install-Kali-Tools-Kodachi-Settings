#!/bin/bash
# 
# Configurations To Add Kali Linux Tools & Setup Kodachi's Privacy & Anonyminity Settings On Debian/Kali/Ubuntu Distros 
# 
# Developer:
# Ez'ra - Project Zero
#
# Github:
# https://github.com/ProjectZeroDays/
#
# Repo:
# Kali-Tools-Kodachi-Settings
# 
# Source:
# https://github.com/ProjectZeroDays/Kali-Tools-Kodachi-Settings
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
sudo apt install wget gdebi python3 curl bash

# Adds Kali Keyring to Debian or Ubuntu Linux


# Adds Kali Sources to Debian or Ubuntu Linux


# Adds Kali Tools to Debian or Ubuntu Linux


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

# You can also temporarily start the SSH service by running # systemctl start ssh.socket. To stop the SSH service, you can run systemctl stop ssh.service, and to disable it, you can run systemctl disable ssh.service

# Download REAL VNC Viewer
wget https://downloads.realvnc.com/download/file/viewer.files/VNC-Viewer

# Download REAL VNC Connect (Server)
wget https://downloads.realvnc.com/download/file/vnc.files/VNC-Server

# Installs VNC Viewer (GDebi Installs .deb Files)
gdebi VNC-Viewer-7.12.0-Linux-x64.deb

# Installs VNC Server (GDebi Installs .deb Files)
gdebi VNC-Server-7.12.0-Linux-x64.deb

# Installed systemd unit for VNC Viewer in Service Mode daemon to start the service with:
systemctl start vncviewer-x11-serviced.service

# Installed systemd unit for VNC Server in Service Mode daemon to start the service with:
systemctl start vncserver-x11-serviced.service

# To stop the VNC Viewer Service use:
#systemctl start vncviewer-x11-serviced.service

# To stop the VNC Server Service use:
#systemctl start vncserver-x11-serviced.service

# Mark the VNV Viewer Service to be started at boot time with:
systemctl enable vncviewer-x11-serviced.service

# Mark the VNV Server Service to be started at boot time with:
systemctl enable vncserver-x11-serviced.service

# Installs Balena Etcher
git clone https://github.com/projectzerodays/balena-etcher
