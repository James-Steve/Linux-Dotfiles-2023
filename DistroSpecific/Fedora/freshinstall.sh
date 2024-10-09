#! /bin/bash
# run by using sudo -u USERNAME bash freshinstall
if [ $# -eq 0 ] && [ "$USER" = "root" ];
  then
    echo "You need to supply the username as a argument"
    exit 128
fi
USER_CURRENT=""
if [ ! "$USER" = "root" ];
then
    USER_CURRENT=$USER
else 
    USER_CURRENT=$1
fi
USER_RUN=$1
export USER_CURRENT
export USER_RUN
USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
export USER_HOME
cd $USER_HOME
rm -rf .bashrc .gitconfig .poshthemes
if [ ! -d $USER_HOME/.config ]; then
	mkdir .config
fi
if [ ! -d $USER_HOME/Documents/Linux-Dotfiles-2023 ]; then
	echo "here"
	git clone https://github.com/James-Steve/Linux-Dotfiles-2023.git
fi
cd $USER_HOME/Documents/Linux-Dotfiles-2023/dotfiles
stow -vS dotconfig -t $USER_HOME/.config/
stow -vS dothome -t $USER_HOME/
stow -vS dotdocuments -t $USER_HOME/Documents
cd $USER_HOME/.config/nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 $USER_HOME/.local/share/nvim/site/pack/packer/start/packer.nvim
source  NewPC/software.sh "$USER_CURRENT"
