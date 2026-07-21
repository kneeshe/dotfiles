# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Define o nvim como editor padrão
export EDITOR='/usr/bin/nvim'

# Configurações dos alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nv='nvim'
alias tm='tmux'
alias ll='ls -laht --color=auto'
alias desligar='shutdown now'
alias suspender='systemctl suspend'
alias dormir='systemctl suspend'
alias kitimg='kitten icat'
alias gpp="g++"

PS1='[\u@\h \W]\$ '

