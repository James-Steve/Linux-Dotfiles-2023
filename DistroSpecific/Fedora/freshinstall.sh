#! /bin/bash
if [ "$SUDO_USER" = "root" ];
  then
    echo "You to run this from a user profile using sudo bash"
    exit 128
fi
export USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
cd $USER_HOME
rm -rf .bashrc .gitconfig .poshthemes
if [ ! -d $USER_HOME/.config ]; then
	mkdir .config
    chown -R $SUDO_USER:$SUDO_USER .config
    chown -R $SUDO_USER:$SUDO_USER .config/.*
fi
if [ ! -d $USER_HOME/Documents ]; then
    mkdir Documents
    chown -R $SUDO_USER:$SUDO_USER Documents
fi
if [ ! -d $USER_HOME/Documents/Linux-Dotfiles-2023 ]; then
	git clone https://github.com/James-Steve/Linux-Dotfiles-2023.git
    chown -R $SUDO_USER:$SUDO_USER Linux-Dotfiles-2023
    chown -R $SUDO_USER:$SUDO_USER Linux-Dotfiles-2023/.*
fi
cd $USER_HOME/Documents/Linux-Dotfiles-2023/dotfiles
git submodule update --init
chown -R $SUDO_USER:$SUDO_USER *
chown -R $SUDO_USER:$SUDO_USER .*
stow -vS dotconfig -t $USER_HOME/.config/
stow -vS dothome -t $USER_HOME/
stow -vS dotdocuments -t $USER_HOME/Documents


cd $USER_HOME/.config/nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 $USER_HOME/.local/share/nvim/site/pack/packer/start/packer.nvim
chown -R $SUDO_USER:$SUDO_USER $USER_HOME/.local

source  NewPC/software.sh
