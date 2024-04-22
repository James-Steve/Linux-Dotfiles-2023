#!/bin/bash
UB="Ubuntu"
FD="Fedora"
AL="All"
DISTRO=""
export UNI="$HOME/Documents/UniOneDrive/"
export SUCK="$HOME/.local/share/suckless/"
source /etc/os-release
#echo $PRETTY_NAME

if [[ ${PRETTY_NAME^^} == *${UB^^}* ]]; then
#Ubuntu
#C:\Users\hamst\OneDrive - Nelson Mandela University\Uni\Third year 2023
DISTRO=$UB
#Folders
alias cwork='cd "/mnt/c/Users/hamst/oneDrive - Nelson Mandela University/Uni/Third year 2023/"'
alias cworkf='cd "/mnt/c/Users/hamst/oneDrive - Nelson Mandela University/Uni/Third year 2023/Physics/"'
alias work='explorer.exe "C:\Users\hamst\OneDrive - Nelson Mandela University\Uni\Third year 2023"'
alias cworkp='cd "/mnt/c/Users/hamst/oneDrive - Nelson Mandela University/Uni/Third year 2023/Programming/WRPV301/"'
alias cper='cd "/mnt/c/Users/hamst/OneDrive/"'
alias cbooks='cd "/mnt/c/Users/hamst/OneDrive/Documents and Books/Books/"'
alias wbooks='explorer.exe "C:\Users\hamst\OneDrive\Documents and Books\Books"'
#alias workr='explorer.exe "C:\Users\hamst\Documents\Rapid Report"'
#alias cworkr='cd "/mnt/c/Users/hamst/Documents/Rapid Report/"'
alias workr='explorer.exe "C:\Users\hamst\Documents\Projects to big for onedrive\CS"'
alias cworkr='cd "/mnt/c/Users/hamst/Documents/Projects to big for onedrive/CS/"'
#Folders
#Ubuntu
fi

if [[ ${PRETTY_NAME^^} == *${FD^^}* ]]; then
#Fedora
#Folders
source /etc/profile.d/mssql.sh
alias cu='cd "$UNI"'
alias cwb='cd "$UNI/2024/EB121/"'
alias cwr='cd "$UNI/2024/RNCV111/"'
alias cwe='cd "$UNI/2024/ECC101/"'
alias cw='cd "$UNI/2024/"'
alias cpy='cd "$UNI/Physics/FVV302b Solid State/"'
alias cpyp='cd "$UNI/Physics/Practicals/Sem2/"'
alias cw='cd "$UNI/Programming/WRPV302/"'
alias cl='cd "$UNI/Programming/WRLV302/"'
alias cld='cd "$HOME/Documents/Linux-Dotfiles-2023/"'
alias cdp='cd "$HOME/Documents/PersonalOneDrive/"'
alias cs='cd "$HOME/.local/share/suckless/"'
alias s='dwmswallow "$WINDOWID" -c'
alias cbooks='cd "$HOME/Documents/PersonalOneDrive/Documents and Books/Books/"'
#Folders
#Fedora
export CW="'$UNI/2024/'"
fi
#All
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

#alias keys='cat "$HOME/aliases.txt"'
#alias keys='grep "^alias" "$HOME/.config/.bash_aliases"'
alias keys='awk "/#$DISTRO/{i++}i==1" "$HOME/.config/.bash_aliases" | grep ^"alias"; awk "/#$AL/{k++}k==1" "$HOME/.config/.bash_aliases" | grep ^"alias"'
alias keysf='awk "/#$DISTRO/{i++}i==1" "$HOME/.config/.bash_aliases" | awk "/#Folders/{i++}i==1" | grep ^"alias"'
#awk

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias telij="bash /opt/idea-IU-222.4345.14/bin/idea.sh"
alias intelij="bash /opt/idea-IU-222.4345.14/bin/idea.sh"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
#All
