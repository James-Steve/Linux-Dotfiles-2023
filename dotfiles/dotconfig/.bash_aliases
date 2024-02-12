#!/bin/bash
UB="ubuntu"
FD="fedora"
export UNI="$HOME/Documents/UniOneDrive/"
export SUCK="$HOME/.local/share/suckless/"
source /etc/os-release
#echo $PRETTY_NAME

if [[ ${PRETTY_NAME^^} == *${UB^^}* ]]; then
#    echo "Im in a ubuntu system"
#custom aliases
#ubuntu aliases
#C:\Users\hamst\OneDrive - Nelson Mandela University\Uni\Third year 2023
alias cwork='cd "/mnt/c/Users/hamst/oneDrive - Nelson Mandela University/Uni/Third year 2023/"'
alias cworkf='cd "/mnt/c/Users/hamst/oneDrive - Nelson Mandela University/Uni/Third year 2023/Physics/"'
alias work='explorer.exe "C:\Users\hamst\OneDrive - Nelson Mandela University\Uni\Third year 2023"'
alias cworkp='cd "/mnt/c/Users/hamst/oneDrive - Nelson Mandela University/Uni/Third year 2023/Programming/WRPV301/"'
alias cper='cd "/mnt/c/Users/hamst/OneDrive/"'
alias workr='explorer.exe "C:\Users\hamst\Documents\Rapid Report"'
alias cworkr='cd "/mnt/c/Users/hamst/Documents/Rapid Report/"'
fi

if [[ ${PRETTY_NAME^^} == *${FD^^}* ]]; then
#    echo "Im in a Fedora system"
#alias cfd='cd "/run/media/JimBob/James Drive/"'
#alias cfdw='cd "/run/media/JimBob/James Drive/WRPV301 2023/Lectures/"'
#Fedora laptop
alias cu='cd "$UNI"'
alias cp='cd "$UNI/Physics/FVV302b Solid State/"'
alias cpp='cd "$UNI/Physics/Practicals/Sem2/"'
alias cw='cd "$UNI/Programming/WRPV302/"'
alias cl='cd "$UNI/Programming/WRLV302/"'
alias cld='cd "$HOME/Documents/Linux-Dotfiles-2023/"'
alias cs='cd "$HOME/.local/share/suckless/"'

fi
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#    "
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

alias keys='cat "$HOME/aliases.txt"'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias telij="bash /opt/idea-IU-222.4345.14/bin/idea.sh"
alias intelij="bash /opt/idea-IU-222.4345.14/bin/idea.sh"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
