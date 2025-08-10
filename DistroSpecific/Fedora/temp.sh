#! /bin/bash
echo $USER
echo $SUDO_USER
export USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
echo $USER_HOME
source temp2.sh

