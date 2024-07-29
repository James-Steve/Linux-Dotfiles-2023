#! /bin/bash
echo "Installing Neovim from source"
if [ ! -d ~/Documents/Source ]; then
mkdir ~/Documents/Source
fi
cd ~/Documents/Source
if [ ! -d ~/Documents/Source/neovim ]; then
git clone https://github.com/neovim/neovim.git
fi
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim --headless -c "PackerSync" -c qall
nvim --headless -c "MasonInstall ast-grep rust-analyzer lua-language-server ltex-ls bash-language-server grammarly-languageserver omnisharp omnisharp-mono csharp-language-server netcoredbg" -c qall
