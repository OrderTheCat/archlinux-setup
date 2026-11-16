export EDITOR="nvim"

_GREEN=$(tput setaf 2)
_BLUE=$(tput setaf 4)
_RESET=$(tput sgr0)

PS1='\[\033[1;32m\]\u@\h\[\033[0m\] \[\033[1;34m\]\w \$\[\033[0m\] '       

alias pac='sudo pacman'
alias fast='fastfetch'
alias fastf='sudo fastfetch'
