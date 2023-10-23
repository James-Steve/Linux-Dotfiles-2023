#!/bin/bash

UB="ubuntu"
FD="fedora"
source /etc/os-release
echo $PRETTY_NAME

if [[ ${PRETTY_NAME^^} == *${UB^^}* ]]; then
    echo "Im in a ubuntu system"
    Sudo apt-get update -y
    sudo apt-get upgrade -y
    sudo apt-get update -y
fi

if [[ ${PRETTY_NAME^^} == *${FD^^}* ]]; then
    echo "Im in a Fedora system"
    Sudo dnf update -y
    sudo dnf upgrade -y
    sudo dnf update -y
fi
