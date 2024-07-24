#! /bin/bash
su 
#run before
#add rpm fusion repo
sudo dnf install \https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

#dnf packages
cat dnfpackages | xargs sudo dnf install -y
sudo ln -s /var/lib/snapd/snap /snap

#rpm packages
cat rpms | while read line; do
wget --output-document temp.rpm "${line}"
sudo dnf install temp.rpm -y
rm -rf temp.rpm
done

#curl with bash install script builtin
source curlbash.sh

#Comands after all is intall
nvm install node
oh-my-posh font install meslo
dotnet tool install --global csharp-ls

#manual installation
source manual.sh
