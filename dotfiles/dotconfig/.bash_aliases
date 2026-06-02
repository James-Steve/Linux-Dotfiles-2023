#!/bin/bash
UB="Ubuntu"
FD="Fedora"
AL="All"
DISTRO=""
#export UNI="$HOME/Documents/UniOneDrive/"
export UNI="$HOME/Documents/ThirdYear/"
export SUCK="$HOME/Documents/Source/Suckless-Software/"
export DOTFILES="$HOME/Documents/Linux-Dotfiles-2023/"
export PERSONAL="$HOME/Documents/PersonalOnedrive/"
export OPENSOURCE="$HOME/Documents/Source/"
export PROJECTS="$HOME/Documents/Projects/"
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
DISTRO=$FD
HON=$HOME/Documents/Honours2026
export HON
#Folders
#source /etc/profile.d/mssql.sh
alias cu='cd "$UNI"'
alias cdv='cd "$HON/WDWV401-DataWarehousing/"'
alias cweim='cd "$HON/WEIM411-EnvironmentInformationSystems/"'
#alias cwb='cd "$UNI/2024/EB121/"'
#alias cwr='cd "$UNI/2024/RNCV111/"'
#alias cwe='cd "$UNI/2024/ECC101/"'
#alias cw='cd "$UNI/2024/"'
#alias cpy='cd "$UNI/Physics/FVV302b Solid State/"'
#alias cpyp='cd "$UNI/Physics/Practicals/Sem2/"'
#alias cw='cd "$UNI/Programming/WRPV302/"'
#alias cl='cd "$UNI/Programming/WRLV302/"'
#alias cdp='cd "$HOME/Documents/PersonalOneDrive/"'
#alias cs='cd "$HOME/Documents/Source/Suckless-Software"'
#alias s='dwmswallow "$WINDOWID" -c'
#alias cup='cd "$UNI/Physics/"'
#alias cupp='cd "$UNI/Physics/Pracs/"'
#alias cuss='cd "$UNI/Physics/FVV302b/"'
#alias cuxr='cd "$UNI/Physics/FVV302a/Xray/"'
#alias cucr='cd "$UNI/Physics/FVV302a/Crystall/"'
#alias culv='cd "$UNI/WRLV302"'
alias cld='cd "$DOTFILES"'
alias clds='cd "$DOTFILES/DistroSpecific/Fedora/"'
alias cldd='cd "$DOTFILES/dotfiles"'
alias clddh='cd "$DOTFILES/dotfiles/dothome"'
alias clddc='cd "$DOTFILES/dotfiles/dotconfig"'
alias clddd='cd "$DOTFILES/dotfiles/dotdocuments"'

alias cs='cd "$SUCK"'
alias copen='cd "$OPENSOURCE"'
alias cproj='cd "$PROJECTS"'

alias cpv='cd "$HOME/Documents/Projects/PVSraper/"'
alias pv='cd "$HOME/Documents/Photovoltaic/"'
alias cbooks='cd "$PERSONAL/Documents and Books/Books/"'

alias chon='cd "$HON"'

alias cai='cd "$HON/WHAI401-ArtificialIntelligence/"'
alias cbi='cd "$HON/WBIV402-BusinessIntelligence/"'
alias cecom='cd "$HON/WREV402-ECommerce/"'
alias cevo='cd "$HON/WRCV402-EvolutionaryComputing/"'
alias cvr='cd "$HON/WVRV402-VirtualReality/"'
alias ctreat='cd "$HON/WHPV400-Treatise/"'
#alias ceis='cd "$HON/WEIM411-EnviromentInformationSystems/"'
#alias cuse='cd "$HON/WEUV401-Usability/"'
#alias cware='cd "$HON/WDWV401-DataWarehousing/"'
#alias cproj='cd "$HON/WHVV401-ProjectManagment/"'
#alias cfun='cd "$HON/WHQV401-FunctionalProgramming/"'
alias whon='nautilus "$HON"'
treat="$HON/WHPV400-Treatise/"


alias screenpvold='xrandr --output DP-1 --right-of eDP-1 --mode 1920x1080; feh --no-fehbg --bg-scale $HOME/Pictures/WallPapers/MontStMichealNight.jpg'
alias screenpv='xrandr --output DP-7 --right-of eDP-1 --mode 1920x1080; xrandr --output eDP-1 --off; xrandr --output DP-5 --right-of DP-7 --mode 1920x1080; feh --no-fehbg --bg-scale $HOME/Pictures/WallPapers/MontStMichealNight.jpg'
alias background='feh --no-fehbg --bg-scale $WALLPAPER'
alias screenfeh='feh --no-fehbg --bg-scale $HOME/Pictures/WallPapers/MontStMichealNight.jpg'
alias screenpvo='xrandr --output DP-7 --off; xrandr --output DP-5 --off; xrandr --output eDP-1 --auto'
alias screenpvoffold='xrandr --output DP-1 --off'
alias getscreens='xrandr | grep "connected"'

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

#starts printing lines from the first occurence of the variable value DISTRO (items sandwhiched inbewteen Fedora will be printed)
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
#weather
alias weather='curl wttr.in'
#Usefully fuzzy find 
# raw command find . -type f | fzf --multi  | sed 's/.*/"&"/g'
alias fuzzy="find . -type f | fzf --multi  | sed 's/.*/\"&\"/g'"
alias tmuxs="systemd-run --scope --user tmux new-session -t"
alias tmuxn="systemd-run --scope --user tmux new-session -d -s"
#All

