#! /bin/bash
dnf install texlive-scheme-basic -y
dnf install texlive-scheme-medium -y
dnf install texlive-scheme-full -y
dnf install latexmk -y
#If biber and biblatex are incompaitble, downlaod bibltatex from github install it into /usr/share/texlive/texmf-dist/
