#! /bin/bash
if [ $# -eq 0 ] && [ "$USER" = "root" ];
  then
    echo "You need to supply the username as a argument"
    exit 128
fi
if [ ! "$USER" = "root" ];
then
    USER_CURRENT=$USER
else 
    USER_CURRENT=$1
fi
sudo systemctl enable smb nmb
sudo systemctl start smb nmb
sudo groupadd SambaGroup
sudo adduser --no-create-hom --shell /usr/sbin/nologin smbuser

sudo usermod -g SambaGroup sambauser
sudo mkdir -p /srv/Samba/MyShare
sudo chown root:SambaGroup /srv/Samba/MyShare/
sudo chmod -R 0777 /srv/Samba/MyShare

sudo echo "" > /etc/samba/smb.conf
cat << EOF >> /etc/samba/smb.conf
[sharedfolder]
   path = /srv/Samba/MyShare
   writable = yes
   browsable = yes
   guest ok = no
EOF
echo "Enter Password for samba user"
sudo smbpasswd -a smbuser
sudo systemctl restart smb nmb
sudo firewall-cmd --permanent --add-service=samba
sudo firewall-cmd --reload
sudo systemctl restart smb nmb
