#latex
if [ ! -d "/usr/local/texlive/$(date +%Y)/bin/" ]; then 
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
sudo env PATH="$PATH" tlmgr install latexmk biblatex cleveref
sudo env PATH="$PATH" tlmgr upadte --all
fi

USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
if [ ! -d $USER_HOME/Documents/Source ]; then
mkdir $USER_HOME/Documents/Source
fi
cd $USER_HOME/Documents/Source
if [ ! -d $USER_HOME/Documents/Source/biber ]; then
git clone https://github.com/plk/biber
else
cd biber
fi
get ch dev
git pull 
git fetch --all
git fetch --tags
latesttag=$(git describe --tags)
echo checking out ${latesttag}
git checkout ${latesttag}

perl Build.PL
./Build installdeps
./Build install
