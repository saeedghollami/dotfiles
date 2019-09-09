#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Load aliases so commands like feh will set bg
[ -f "$HOME/.dotfiles/.aliasrc" ] && . "$HOME/.dotfiles/.aliasrc"

export PS1="\[\e[34m\][\[\e[m\]\u@\h:\W\[\e[34m\]]\[\e[m\]\\$ "
