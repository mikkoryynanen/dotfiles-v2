#!/bin/bash

ask_yes_no() {
    while true; do
        echo "$1 [y/n]"
        read -r response
        case "$response" in
            [Yy]|[Yy][Ee][Ss])
                return 0  # Return 0 for yes
                ;;
            [Nn]|[Nn][Oo])
                return 1  # Return 1 for no
                ;;
            *)
                echo "Please answer yes or no."
                ;;
        esac
    done
}

