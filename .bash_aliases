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
alias lr='ls -alR'
alias la='ls -A'
alias l='ls -alF'

alias sl='l'
alias SL='l'
alias LS='l'

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
  function cdc {
    cd "$(xclip -o)"
  }
  alias cb="clipboard"
  alias pwdc="pwd | tee >(xclip -i)"
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
  alias ggr='/usr/bin/git log --all --decorate --oneline --graph'
  alias g='gitty'
  alias gcd='cd $(/usr/bin/git rev-parse --show-toplevel)'
  alias gp='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset" --abbrev-commit --date=relative'

  function gitty () {
    if [[ $# == 0 ]];
    then
      /usr/bin/git status -sb
    else
      /usr/bin/git "$@"
    fi
  }
}

exists wstool && {
  alias ws="wstool"
  function cdws {
    cd $(wstool info --root)
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
  alias tvn="tvnamer --config=$HOME/.config/.tvnamer.json"
  alias tvmv="tvnamer --config=$HOME/.config/.tvnamer.json -m -b"
fi

exists matlab && exists wmname && alias matlab='wmname "LG3D"; matlab'

if exists tmux ;
then
  alias tmux="tmux -2"
fi

if exists nvim;
then
  alias vi="nvim";
elif exists vim.gnome; then
  alias vi="vim.gnome";
else
  alias vi="vim";
fi
