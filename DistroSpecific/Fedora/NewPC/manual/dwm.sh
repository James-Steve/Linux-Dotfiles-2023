# Prompt for password at the start
sudo -n true

# Set up XDG directories
xdg_config_home=${XDG_CONFIG_HOME:-$HOME/.config}
xdg_data_home=${XDG_DATA_HOME:-$HOME/Documents/Source/Suckless-Software/}

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
cd "$xdg_data_home"
for line in dwm st dmenu slock dmwblocks; do
sudo make clean 
sudo make install;
done
echo "Install now complete. You can now logout and change your DE/WM."
