#!/bin/bash

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

exists google-chrome && alias chrome="google-chrome --enable-plugins &";

exists git && { 
  #Git
  alias gitb='/usr/bin/git branch -v'
  alias gitco='/usr/bin/git commit'
  alias gitch='/usr/bin/git checkout'
  alias gits='/usr/bin/git status'
  alias gitr='/usr/bin/git remote -v'
  alias gita='/usr/bin/git add'
  alias gitl='/usr/bin/git log'
  alias git='gitty'

  function gitty () {
    if [[ $# == 0 ]];
    then
      /usr/bin/git status -sb
    else
      /usr/bin/git "$@"
    fi
  }
}

#latexmk
exists latexmk && alias ltmk='latexmk -pvc'

#tvnamer
if exists tvnamer && [[ -f "$HOME/.config/.tvnamer.json" ]];
then
  alias tvnamer="tvnamer --config=$HOME/.config/.tvnamer.json"
fi

exists wmname && alias matlab='wmname "LG3D"; matlab'
