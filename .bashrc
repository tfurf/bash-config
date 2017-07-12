# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# History options.
HISTCONTROL=ignoredups:ignorespace:erasedups
shopt -s histappend
HISTIGNORE="&:ls:ll:cd *:[ ]*:$HISTIGNORE"
HISTSIZE=10000
HISTFILESIZE=200000
export HISTCONTROL HISTIGNORE HISTSIZE HISTFILESIZE

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  # We have color support; assume it's compliant with Ecma-48
  # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
  # a case would tend to support setf rather than setaf.)
  color_prompt=yes
    else
  color_prompt=
    fi
fi

function exists {
  #Check if function exists.
  hash ${1} 2>/dev/null || { return 1 ; }
  return 0
}

# Base16 Shell
#BASE16_SHELL="$HOME/.config/base16-shell/scripts/base16-default-dark.sh"
#[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

function git_prompt()
{
  [[ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]] && source /usr/share/git-core/contrib/completion/git-prompt.sh
  exists __git_ps1 && [[ -n $(__git_ps1) ]] && echo -e "($(__git_ps1 %s))"
}

if [ "$color_prompt" = yes ]; then
  if [ -n "$SSH_CLIENT" ];
  then
    PS1="\[\033[01;35m\][\t]\[\033[01;31m\][SSH]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\[\033[01;33m\]\$(git_prompt)\[\033[00m\]$ "
  else
    PS1="\[\033[01;35m\][\t]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\[\033[01;33m\]\$(git_prompt)\[\033[00m\]$ "
  fi
else
  PS1="[\t]${debian_chroot:+($debian_chroot)}\u@\h:\W\$(git_prompt)"
fi
unset color_prompt force_color_prompt
export PS1

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# Alias definitions.

if [ -f ~/.bash/.bash_aliases ]; then
    . ~/.bash/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

if [ -f ~/.bash/.bash_completion ] ; then
    source ~/.bash/.bash_completion
fi

# set PATH so it includes user's private bin(s) if it/they exist
bins="$HOME/bin \
      $HOME/.local/bin"
for bin in ${bins}; do
  if [ -d "${bin}" ] ;
  then
      PATH="${bin}:$PATH";
      export PATH
  fi
done

if [ -f "$HOME/.bash/src/bash-sources.bash" ] ; then
  source "$HOME/.bash/src/bash-sources.bash"
fi

# Trying vi mode.
set -o vi


if exists nvim;
then
  export EDITOR="nvim"
else
  export EDITOR="vim"
fi

# ROS-related stuff.
export ROS_PREFERRED_DISTRO="indigo"

#Either give absolute path, or dont' use quotes, so tilde gets expanded.
export WORKSPACES_ROOT=~/workspaces

# For pass.

if [ -f /etc/bash_completion.d/password-store ] ;
then
  source /etc/bash_completion.d/password-store
fi

if [ -d ~/gopath ];
then
  export GOPATH=$HOME/gopath
  export PATH=$GOPATH:$GOPATH/bin:$PATH
fi

if [ -f ~/.rvm/scripts/rvm ];
then
  source ~/.rvm/scripts/rvm
fi

if [ -f ~/.fzf.bash ];
then
  source ~/.fzf.bash
fi
