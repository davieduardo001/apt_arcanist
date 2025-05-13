#!/bin/bash

set -e # Exit err

############################
# Make scripts execs
############################
chmod +x ./src/scripts/*.sh

############################
# Sources
############################
source ./src/scripts/system_updates.sh
source ./src/static/colors.sh

############################
# Exec
############################
clear
show_cute_dragon
echo -e "\n${CYAN}Welcome to Apt Arcanist!${RESET}\n"

  echo -e "${BOLD}"
    cat << "EOF"
1) Install all
2) Select what to install
3) Open the code editor
4) Update System
0) Exit
EOF
  echo -e "${RESET}"

read -p "What u' wanna do? " what_to_do

# OPTION 1 - Intall all
if [[ "$what_to_do" == 1 ]]; then
    run_all() {
        update_sys
        upgrade_sys
    }

    run_all
fi

# OPTION 2 - Select what to install
if [[ "$what_to_do" == 2 ]]; then
    echo -e "${RED}Building...${RESET}"
fi

# OPTION 3 - Open the code editor
if [[ "$what_to_do" == 3 ]]; then
    echo -e "${RED}Cooking...${RESET}"
fi

# OPTION 4 - Update System
if [[ "$what_to_do" == 4 ]]; then
    update_sys
    upgrade_sys
fi


echo -e "Automation complete!"
