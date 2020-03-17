#!/bin/bash

# set color
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}##################################${NC}"
echo -e "${BLUE}# >>>> start provisioning         ${NC}"
echo -e "${BLUE}##################################${NC}"

# install openvpn
echo -e "${GREEN}#################################${NC}"
echo -e "${GREEN}# >>>> install easy-openvpn      ${NC}"
echo -e "${GREEN}#################################${NC}"
sudo apt-get install -y dnsmasq
sudo cp /vagrant/files/dnsmasq/dnsmasq.conf /etc/dnsmasq.conf


# set version
OPENVPN_VERSION=$(dnsmasq --version | grep "Dnsmasq version" | awk  '{print $3}')
echo "$DNSMASQ_VERSION" > /vagrant/version

echo -e "${BLUE}#################################${NC}"
echo -e "${BLUE}# >>>> end provisioning          ${NC}"
echo -e "${BLUE}#################################${NC}"
