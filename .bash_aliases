#!/bin/bash
# called by .bashrc

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias sl='ls'
alias SL='ls'
alias LS='ls'

if [ -f ~/bin/dir.sh ]; then
	. ~/bin/dir.sh
fi

alias g='vim --remote-silent'
alias chrome="google-chrome --enable-plugins &";
