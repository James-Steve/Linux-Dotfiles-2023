#! /bin/bash
# Prompt for password at the start
#sudo -n true

USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
echo $USER_HOME
xdg_config_home=$USER_HOME/.config
xdg_data_home=$USER_HOME/Documents/Source/Suckless-Software/

echo $xdg_data_home
echo $xdg_data_home
if [ ! -f /usr/share/xsessions/dwm.desktop ]; then
# Set up XDG directories

mkdir -p "$xdg_data_home/suckless"
cd "$xdg_data_home/suckless"

echo "Creating DWM session"
echo "[Desktop Entry]
Encoding=UTF-8
Name=DWM
Exec=dwm-setup
Icon=dwm
Type=XSession" | sudo tee "/usr/share/xsessions/dwm.desktop"
fi

if [ ! -f /usr/local/bin/dwm-setup ]; then
echo "~/.xinitrc &
exec dwm" | sudo tee /usr/local/bin/dwm-setup
sudo chmod +x /usr/local/bin/dwm-setup
fi

cd "$xdg_data_home"
pwd | echo 
for line in dwm st dmenu slock dmwblocks; do
cd $line
echo $line
pwd | echo 
sudo make clean 
sudo make install;
cd ..
done
echo "Install now complete. You can now logout and change your DE/WM."
rm -rf "$xdg_data_home/suckless"
