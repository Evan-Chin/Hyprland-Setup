#
# ~/.bashrc
#

eval "$(starship init bash)"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias cmatrix='cmatrix -C magenta -b'
alias clock='tty-clock -c -C5'
alias wlogout='wlogout --buttons-per-row 4'

cowsay "hi, im a cow"
