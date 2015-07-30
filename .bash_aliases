#!/bin/bash

function exists {
  #Check if function exists.
  hash ${1} 2>/dev/null || { return 1 ; }
  return 0
}

function isgitted {
  [[ -d "$1"/.git ]]
  return $?
}

function suspend {
  dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Suspend
}

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias sl='ls'
alias SL='ls'
alias LS='ls'

alias vis='vim --servername VIM --remote-silent'

exists xclip && {
  function clipboard {
    if [ ! -t 0 ] ;
    then
      xclip -i
    else
      xclip -o
    fi
  }
  alias cb="clipboard"
}

exists google-chrome  && alias chrome="google-chrome --enable-plugins &";
exists bc             && alias bc="bc --mathlib";

exists git && {
  #Git
  alias gb='/usr/bin/git branch -va'
  alias gco='/usr/bin/git commit'
  alias gd='/usr/bin/git diff --word-diff'
  alias gs='/usr/bin/git status'
  alias gr='/usr/bin/git remote -v'
  alias ga='/usr/bin/git add'
  alias gl='/usr/bin/git log --format=format:"%ai %h %aE %s"'
  alias gt='/usr/bin/git tag'
  alias g='gitty'

  function gitty () {
    if [[ $# == 0 ]];
    then
      /usr/bin/git status -sb
    else
      /usr/bin/git "$@"
    fi
  }
}

[[ -f "$HOME/.bash/bin/todo-txt-cli/todo.sh" ]] && {
  export TODOTXT_DEFAULT_ACTION=ls
  TODOTXT_REPO="$HOME/todo"
  TODOTXT_CONFIG="$TODOTXT_REPO/todo.cfg"
  [[ -f $TODOTXT_CONFIG ]] && \
    alias t='$HOME/.bash/bin/todo-txt-cli/todo.sh -d $HOME/todo/todo.cfg' || \
    alias t='$HOME/.bash/bin/todo-txt-cli/todo.sh'

  isgitted "$TODOTXT_REPO" && {
    function todo-commit () {
      (
        cd "$TODOTXT_REPO"
        if [[ $# == 0 ]];
        then
          git commit -a -m "Automated commit from $(hostname)."
          git push home master
        else
          git commit -a -m "$@"
          git push home master
        fi
      )
    }
    alias tdc='todo-commit'
  }
}

#latexmk
exists latexmk && alias ltmk='latexmk -pvc'

#tvnamer
if exists tvnamer && [[ -f "$HOME/.config/.tvnamer.json" ]];
then
  alias tvnamer="tvnamer --config=$HOME/.config/.tvnamer.json"
fi

exists matlab && exists wmname && alias matlab='wmname "LG3D"; matlab'
