#!/bin/bash
# called by .bashrc

function exists {
  #Check if function exists.
  hash ${1} 2>/dev/null || { return 1 ; }
  return 0
}

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias sl='ls'
alias SL='ls'
alias LS='ls'

alias vis='vim --servername VIM --remote-silent'
alias chrome="google-chrome --enable-plugins &";

#Git
alias gitb='git branch -v'
alias gitco='git commit'
alias gitch='git checkout'
alias gits='git status'
alias gitr='git remote -v'
alias gita='git add'
alias gitl='git log'

#latexmk
alias ltmk='latexmk -pvc'
if exists tvnamer && [[ -f "$HOME/.config/.tvnamer.json" ]];
then
  alias tvnamer="tvnamer --config=$HOME/.config/.tvnamer.json"
fi

if exists wmname ;
then
  alias matlab='wmname "LG3D"; matlab'
fi

alias standby='dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Suspend'
