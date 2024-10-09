#! /bin/bash
USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
luarocks install --server=https://luarocks.org/dev luaformatter
python3 -m pip install --user --upgrade pynvim
echo "Installing Neovim from source"
if [ ! -d $USER_HOME/Documents/Source ]; then
mkdir $USER_HOME/Documents/Source
fi
cd $USER_HOME/Documents/Source
if [ ! -d $USER_HOME/Documents/Source/neovim ]; then
git clone https://github.com/neovim/neovim.git
else
cd neovim
git pull
git checkout stable
cd ..
fi
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    $USER_HOME/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim --headless -c "PackerSync" -c qall
nvim --headless -c "MasonInstall ast-grep rust-analyzer lua-language-server ltex-ls bash-language-server grammarly-languageserver omnisharp omnisharp-mono csharp-language-server netcoredbg debugpy luaformatter" -c qall

