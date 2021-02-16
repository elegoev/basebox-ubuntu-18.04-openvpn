#!/bin/bash

application_file_path="/vagrant/installed-application.md"

# install openvpn
sudo snap install easy-openvpn

# enable ip forwarding
sudo sysctl -w net.ipv4.ip_forward=1

# set version
OPENVPN_VERSION=$(snap info easy-openvpn | grep installed | awk  '{print $2}')
echo "# Installed application "  > $application_file_path
echo "***                     " >> $application_file_path
echo "> OpenVPN: $OPENVPN_VERSION" >> $application_file_path


