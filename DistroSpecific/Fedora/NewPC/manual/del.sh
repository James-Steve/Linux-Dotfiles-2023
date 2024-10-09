#! /bin/bash
if [ $# -eq 0 ] && [ "$USER" = "root" ];
  then
    echo "You need to supply the username as a argument"
    exit 128
fi
sudo echo "the sudo user name is: $PINE"
sudo echo $USER_CURRENT
sudo echo $USER
sudo echo $USER
sudo echo $USER
