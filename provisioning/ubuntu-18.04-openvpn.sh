#!/bin/bash

# set color
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}#################################${NC}"
echo -e "${BLUE}# >>>> start provisioning        ${NC}"
echo -e "${BLUE}#################################${NC}"

# install openvpn
echo -e "${GREEN}#################################${NC}"
echo -e "${GREEN}# >>>> install easy-openvpn      ${NC}"
echo -e "${GREEN}#################################${NC}"
snap install easy-openvpn

# enable ip forwarding
echo -e "${GREEN}#################################${NC}"
echo -e "${GREEN}# >>>> enable ip forwarding      ${NC}"
echo -e "${GREEN}#################################${NC}"
sudo sysctl -w net.ipv4.ip_forward=1

# setup server
echo -e "${GREEN}#################################${NC}"
echo -e "${GREEN}# >>>> setup easy-openvpn        ${NC}"
echo -e "${GREEN}#################################${NC}"
# snap set easy-openvpn nopasswd=1
# sudo easy-openvpn.setup -u udp://171.16.1.20

echo -e "${BLUE}################################${NC}"
echo -e "${BLUE}# >>>> end provisioning         ${NC}"
echo -e "${BLUE}################################${NC}"
