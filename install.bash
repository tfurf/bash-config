#!/bin/bash

CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
t=".bashrc
.profile
.bash_completion"

while getopts f? k; do
  case "${k}" in
    f)
      force="yes"
      ;;
    ?)
      exit 1
      ;;
  esac
done

for f in ${t}; do
  [[ -f ${CWD}/${f} ]] && {
    [[ ${force} == "yes" ]] && rm -v ~/${f} ;
    ln -vsT ${CWD}/${f} ~/${f} ;
  }
done;

( mkdir -p completion && cd $_ && wget https://git.zx2c4.com/password-store/plain/src/completion/pass.bash-completion )
( git clone https://gist.github.com/8b572b8d4b5eddd8b85e5f4d40f17236.git fzf-git/ )
