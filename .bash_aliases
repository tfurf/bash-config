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
alias gitb='/usr/bin/git branch -v'
alias gitco='/usr/bin/git commit'
alias gitch='/usr/bin/git checkout'
alias gits='/usr/bin/git status'
alias gitr='/usr/bin/git remote -v'
alias gita='/usr/bin/git add'
alias gitl='/usr/bin/git log'
alias 

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

#ROS
function cdroslog {
  cd `roslaunch-logs`   
}
alias rss='rossource'
alias rte='rostopic echo -p'
alias rbe='rostopic echo -p -b'
alias rtp='rostopic pub'
alias rnl='rosnode list'
alias rld='cdroslog'
