#! bin/bash
if [ "$SUDO_USER" = "root" ];
  then
    echo "You to run this from a user profile using sudo bash"
    exit 128
fi
export USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
cd $USER_HOME/Documents/Linux-Dotfiles-2023/DistroSpecific/Fedora/NewPC/manual
source depends.sh
cd $USER_HOME/Documents/Linux-Dotfiles-2023/DistroSpecific/Fedora/NewPC/manual
source nvm.sh
cd $USER_HOME/Documents/Linux-Dotfiles-2023/DistroSpecific/Fedora/NewPC/manual
source nvim.sh
cd $USER_HOME/Documents/Linux-Dotfiles-2023/DistroSpecific/Fedora/NewPC/manual
#source dwm.sh
#source latex.sh
source LatexDnf.sh
cd $USER_HOME/Documents/Linux-Dotfiles-2023/DistroSpecific/Fedora/NewPC/manual
