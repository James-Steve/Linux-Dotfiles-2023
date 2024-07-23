#! /bin/bash

sudo mkdir -p /usr/local/texlive/$(date +%Y)
sudo chown -R "$USER" /usr/local/texlive
mkdir /tmp/texlive
sudo cd /tmp/texlive
sudo wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl.zip
sudo unzip ./install-tl.zip -d install-tl
cd install-tl/install-tl-$(date +%Y%m%d)
sudo perl ./install-tl
export MANPATH="$MANPATH:/usr/local/texlive/2022/texmf-dist/doc/man"
export INFOPATH="$INFOPATH:/usr/local/texlive/2022/texmf-dist/doc/info"
export PATH=/usr/local/texlive/2022/bin/x86_64-linux:$PATH
