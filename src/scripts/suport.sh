#!/bin/bash

verify_program() {
    local program_name="$1"

    if which "$program_name" >/dev/null 2>&1; then
        echo -e "${program_name} is installed"
        return 0
    else
        echo -e "${program_name} is not installed"
        return 1
    fi
}