#! /bin/bash
su
#Spotify
snap install spotify -y

#neovim
echo "Installing Neovim from source"
if [ ! -f ~/Documents/Source ]; then
mkdir ~/Documents/Source
fi
cd ~/Documents/Source
if [ ! -f ~/Documents/Source/neovim ]; then
git clone https://github.com/neovim/neovim.git
fi
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim --headless -c "PackerSync" -c qall
nvim --headless -c "MasonInstall ast-grep rust-analyzer lua-language-server ltex-ls bash-language-server grammarly-languageserver omnisharp omnisharp-mono csharp-language-server netcoredbg" -c qall
# DWM
#!/bin/sh

# Prompt for password at the start
sudo -n true

# Set up XDG directories
xdg_config_home=${XDG_CONFIG_HOME:-$HOME/.config}
xdg_data_home=${XDG_DATA_HOME:-$HOME/Documents/Suckless-Software/}

mkdir -p "$xdg_data_home/suckless"
cd "$xdg_data_home/suckless"

echo "Creating DWM session"
echo "[Desktop Entry]
Encoding=UTF-8
Name=DWM
Exec=dwm-setup
Icon=dwm
Type=XSession" | sudo tee "/usr/share/xsessions/dwm.desktop"

echo "~/.xinitrc &
exec dwm" | sudo tee /usr/local/bin/dwm-setup
sudo chmod +x /usr/local/bin/dwm-setup
cd "~/Documents/Suckless-Software/"
for line in dwm st dmenu slock dmwblocks; do
sudo make clean 
sudo make install;
done
echo "Install now complete. You can now logout and change your DE/WM."


#latex
mkdir /tmp/texlive
cd /tmp/texlive
wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl.zip
unzip ./install-tl.zip -d install-tl
cd install-tl/install-tl-$(date +%Y%m%d)
cat << EOF >> texlive.profile
selected_scheme scheme-tetex
TEXDIR /usr/local/texlive/2024
TEXMFCONFIG ~/.texlive2024/texmf-config
TEXMFHOME ~/texmf
TEXMFLOCAL /usr/local/texlive/texmf-local
TEXMFSYSCONFIG /usr/local/texlive/2024/texmf-config
TEXMFSYSVAR /usr/local/texlive/2024/texmf-var
TEXMFVAR ~/.texlive2024/texmf-var
binary_x86_64-linux 1
instopt_adjustpath 0
instopt_adjustrepo 1
instopt_letter 0
instopt_portable 0
instopt_write18_restricted 1
tlpdbopt_autobackup 1
tlpdbopt_backupdir tlpkg/backups
tlpdbopt_create_formats 1
tlpdbopt_desktop_integration 1
tlpdbopt_file_assocs 1
tlpdbopt_generate_updmap 0
tlpdbopt_install_docfiles 1
tlpdbopt_install_srcfiles 1
tlpdbopt_post_code 1
tlpdbopt_sys_bin /usr/local/bin
tlpdbopt_sys_info /usr/local/share/info
tlpdbopt_sys_man /usr/local/share/man
tlpdbopt_w32_multi_user 1
EOF
./install-tl --profile=./texlive.profile
export MANPATH="$MANPATH:/usr/local/texlive/($(date +%Y)/texmf-dist/doc/man"
export INFOPATH="$INFOPATH:/usr/local/texlive/($(date +%Y)/texmf-dist/doc/info"
export PATH="/usr/local/texlive/($(date +%Y)/bin/x86_64-linux:$PATH"
sudo env PATH="$PATH" tlmgr install latexmk
