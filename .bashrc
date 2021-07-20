#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

PATH=$PATH:/home/nic/Scripts/:/usr/local/bin/geckodriver
export EDITOR=/usr/bin/vim
set -o vi

# Aliases

alias flux="redshift -l 59:10"
