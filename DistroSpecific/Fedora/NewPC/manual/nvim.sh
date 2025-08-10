#! /bin/bash
sudo -u $SUDO_USER luarocks install --server=https://luarocks.org/dev luaformatter
sudo -u $SUDO_USER python3 -m pip install --user --upgrade pynvim
echo "Installing Neovim from source"
if [ ! -d $USER_HOME/Documents/Source ]; then
mkdir $USER_HOME/Documents/Source
chown -R $SUDO_USER:$SUDO_USER $USER_HOME/Documents
fi
cd $USER_HOME/Documents/Source
if [ ! -d $USER_HOME/Documents/Source/neovim ]; then
git clone https://github.com/neovim/neovim.git
chown -R $SUDO_USER:$SUDO_USER neovim
chown -R $SUDO_USER:$SUDO_USER neovim/.*
else
cd neovim
git pull
git fetch --all --tags --prune --force
git checkout stable
chown -R $SUDO_USER:$SUDO_USER *
chown -R $SUDO_USER:$SUDO_USER .*
fi
cd neovim
sudo -u $SUDO_USER make CMAKE_BUILD_TYPE=RelWithDebInfo
make install
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    $USER_HOME/.local/share/nvim/site/pack/packer/start/packer.nvim
chown -R $SUDO_USER:$SUDO_USER $USER_HOME/*
chown -R $SUDO_USER:$SUDO_USER $USER_HOME/.*
nvim --headless -c "PackerSync" -c qall
nvim --headless -c "MasonInstall ast-grep rust-analyzer lua-language-server ltex-ls bash-language-server grammarly-languageserver omnisharp omnisharp-mono csharp-language-server netcoredbg debugpy luaformatter" -c qall
nvim --headless -c "MasonInstall clangd json-lsp jsonld-lsp pyright  texlab jdtls yaml-language-server yamlls jdlts autoflake autopep8 blackd-client blue" -c qall
nvim --headless -c "MasonInstall clang-format darker docformatter isort prettier pyink sql-formatter sqlfmt" -c qall


