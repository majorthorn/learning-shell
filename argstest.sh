#!/bin/bash

# set -e
echo "Test"

print_help() {
    echo "Usage: bash goinstall.sh OPTIONS"
    echo -e "\nOPTIONS:"
    echo -e "  --remove\tRemove currently installed version"
    echo -e "  --version\tSpecify a version number to install"
}
VERSION="1.1"
echo $VERSION
if [ "$1" == "--version" ]; then
    if [ -z "$2" ]; then
        echo "$1 Requires a Number"
        
    else
        VERSION=$2
    fi
elif [ "$1" == "--help" ]; then
    print_help
    exit 0

fi

echo $VERSION
