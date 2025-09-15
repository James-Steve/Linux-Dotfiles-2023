#! /bin/bash
if [ "$SUDO_USER" = "root" ];
  then
    echo "You to run this from a user profile using sudo bash"
    exit 128
fi
export USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
#Fonts
echo "============================================="
echo "Installing Fonts"
echo "============================================="
cd $USER_HOME/Documents/Source
git clone --filter=blob:none --sparse https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
git sparse-checkout add patched-fonts/JetBrainsMono/
git sparse-checkout add patched-fonts/Meslo/
bash install.sh -S Meslo
bash install.sh -S JetBrainsMono
cd ..
chown -R $SUDO_USER:$SUDO_USER nerd-fonts
chown -R $SUDO_USER:$SUDO_USER nerd-fonts/.*
fc-cache -f -v
#echo "============================================="
#echo "Installing csharp-ls"
#echo "============================================="
#dotnet tool install --global csharp-ls
