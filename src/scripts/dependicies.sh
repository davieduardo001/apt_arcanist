#!/bin/bash

verify_dependecies() {
    if ! verify_program lolcat; then
        echo "lolcat is missing installing it..."
        sudo apt install lolcat
    fi

    if ! verify_program cowsay; then
        echo "cowsay is missing installing it..."
        sudo apt install cowsay
    fi

    if ! verify_program kitty; then
        echo "kitty is missing installing it..."
        sudo apt install kitty
    fi
}
