#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Meldungen von Terminal-Programmen auf Englisch (z. B. [Y/n] statt [J/n]),
# Formate (Datum, Zahlen) und KDE bleiben deutsch
export LC_MESSAGES=en_US.UTF-8
# Konsole setzt LANGUAGE=de:en_US, das hätte Vorrang vor LC_MESSAGES
unset LANGUAGE
PS1='\[\e[1;32m\]\u@\h\[\e[0m\] \[\e[1;34m\]\w\[\e[0m\] \$ '

. "$HOME/.local/bin/env"
eval "$(starship init bash)"

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
