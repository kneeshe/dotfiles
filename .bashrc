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
alias ll='ls -lah'
alias desligar='shutdown now'
alias suspender='systemctl suspend'
alias pw='$PW'
alias dormir='systemctl suspend'
alias comprun='gcc *.c && ./*.out'

PS1='[\u@\h \W]\$ '

# teste - aqui irei colocar os textos
# de inicialização do bash e afins

#figlet -f banner "END OS" | lolcat

#cowsay "Oi, Cris. Bem vindo de volta!" | lolcat

export PW='/home/cris/Documentos/pywal/muda_cor.sh'

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
. "$HOME/.cargo/env"

[ -f "/home/cris/.ghcup/env" ] && . "/home/cris/.ghcup/env" # ghcup-env
