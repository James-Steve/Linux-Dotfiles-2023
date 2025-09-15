#! /bin/bash
if [ "$SUDO_USER" = "root" ];
  then
    echo "You to run this from a user profile using sudo bash"
    exit 128
fi
export USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
echo $USER_HOME
echo $USER_HOME
echo $USER_HOME
echo $USER_HOME
#run before
#add rpm fusion repo
dnf install \https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
#dnf packages
cat dnfpackages | xargs dnf install -y
#ln -s /var/lib/snapd/snap /snap

#rpm packages
cat rpms | while read line; do
wget --output-document temp.rpm "${line}"
dnf install temp.rpm -y
rm -rf temp.rpm
done

#curl with bash install script builtin
source curlbash.sh

#sudo -u $SUDO_USER oh-my-posh font install meslo
dotnet tool install --global csharp-ls

#manual installation
cd $USER_HOME/Documents/Linux-Dotfiles-2023/DistroSpecific/Fedora/NewPC
source manual/init.sh
