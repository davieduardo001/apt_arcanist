#!/bin/bash

############################
# Sources
############################
source ./src/static/colors.sh

############################
# Exec
############################
update_sys() {
    echo -e "${YELLOW}Updating system...${RESET}"
    sudo apt update -y
}

upgrade_sys() {
    echo -e "${YELLOW}Upgrading system...${RESET}"
    sudo apt upgrade -y
}
