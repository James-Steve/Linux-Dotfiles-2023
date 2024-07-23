#! /bin/bash
cd ~/
rm -rf .bashrc .gitconfig .poshthemes
if [ ! -d ~/.config ]; then
	mkdir .config
fi
if [ ! -d ~/Documents/Linux-Dotfiles-2023 ]; then
	echo "here"
	git clone https://github.com/James-Steve/Linux-Dotfiles-2023.git
fi
cd ~/Documents/Linux-Dotfiles-2023/dotfiles
stow -vS dotconfig -t ~/.config/
stow -vS dothome -t ~/
stow -vS dotdocuments -t ~/Documents
cd ~/.config/nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim


