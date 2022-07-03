#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='[\u \W]\$ '

PATH=$PATH:/home/nic/Scripts/
export EDITOR=/usr/bin/vim
set -o vi

# Aliases
alias flux="redshift -l 63:10"
alias update="sudo pacman -Syyu"
alias wttr="curl https://wttr.in"
alias untar="tar -xvzf"
alias ls='ls --color=auto'
alias halt="sudo halt"
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"
alias shutdown="sudo shutdown"
alias zzz="sudo zzz"
