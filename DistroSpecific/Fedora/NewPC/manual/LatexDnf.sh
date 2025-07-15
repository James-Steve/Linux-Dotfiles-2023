#! /bin/bash
sudo dnf install texlive-scheme-basic -y
sudo dnf install texlive-scheme-medium -y
sudo dnf install texlive-scheme-full -y
sudo dnf install latexmk -y
#If biber and biblatex are incompaitble, downlaod bibltatex from github install it into /usr/share/texlive/texmf-dist/
