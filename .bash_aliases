#!/bin/bash
# called by .bashrc

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias sl='ls'
alias SL='ls'
alias LS='ls'

if [ -f ~/.bash/bin/dir.sh ]; then
	. ~/.bash/bin/dir.sh
fi

alias g='vim --remote-silent'
alias chrome="google-chrome --enable-plugins &";
alias gitb='git branch -v'
alias gitco='git commit'
alias gitch='git checkout'
alias gits='git status'
alias gitr='git remote -v'
alias gita='git add'
alias gitl='git log'
