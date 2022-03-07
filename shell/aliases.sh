#!/usr/bin/env sh
# remove alias
unalias -a
# Debian package manager
# alias apt='sudo apt-get'
# Clear
alias clear='clear -x'
# ls
alias ls='ls --color="always"'
alias ll='ls -lh'
alias la='ls -lha'
alias lt='tree -L 1 .'
# sudo
alias sudo='sudo '
alias _='sudo '
# mkdir
alias mkdir='mkdir -p'
# Intellij Idea
alias i='(idea &>/dev/null &)'
alias i.='(idea $PWD &>/dev/null &)'
# Visual Studio Code
alias c='(code-insiders &>/dev/null &)'
alias c.='(code-insiders $PWD &>/dev/null &)'

# Docker compose
# alias docker-compose="docker compose"
