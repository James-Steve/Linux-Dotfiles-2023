cd $USER_HOME/Documents/Source/
git clone https://github.com/nvm-sh/nvm.git
chown -R $SUDO_USER:$SUDO_USER nvm-sh
chown -R $SUDO_USER:$SUDO_USER nvm-sh/.*
cd nvm
git pull 
git fetch --all
git fetch --tags
git checkout `git tag | grep "v0.40*" | sort --reverse | head -n 1`
chown -R $SUDO_USER:$SUDO_USER *
chown -R $SUDO_USER:$SUDO_USER ../nvm
chown -R $SUDO_USER:$SUDO_USER .*
sudo -u "$SUDO_USER" bash install.sh
cd $USER_HOME
