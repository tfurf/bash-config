#!/bin/bash

ROS_DISTROS="hydro \
   indigo \
   groovy \
   fuerte"

function isrosinstalled () {
  # Function checks if ros is installed anywhere.
  local result=1
  for d in ${ROS_DISTROS};
  do
    [[ -d "/opt/ros/${d}" ]] && result=0
  done
  return $result
}

# If a ros installation can't be found in the expected places, just bail.
isrosinstalled || return 1

alias rss='rossource'
alias rte='rostopic echo -p'
alias rbe='rostopic echo -p -b'
alias rtp='rostopic pub'
alias rnl='rosnode list'
alias rld='cdroslog'

function cdroslog {
  cd `roslaunch-logs`   
}

function rossource {
  x=`pwd`;
  ROS_DISTROS="hydro \
     indigo \
     groovy \
     fuerte"
  # If we know where the workspaces are.
  echo "ROS_WORKSPACES_ROOT=$ROS_WORKSPACES_ROOT"
  if [[ -n $ROS_WORKSPACES_ROOT ]] && [[ $x == $ROS_WORKSPACES_ROOT* ]] ; then
    while [ "$x" != `dirname $ROS_WORKSPACES_ROOT` ] ; do 
      x=`dirname "$x"`;
      s=`find "$x" -maxdepth 2 -name setup.bash | head -n 1`;
      [[ -z "$s" ]] || break;
    done
  fi 
  # If we at least know the distro you're trying to source for...
  [[ -n $ROS_PREFERRED_DISTRO ]] && [[ -z "${s}" ]] && s="/opt/ros/"$(tr '[:upper:]' '[:lower:]' <<< $ROS_PREFERRED_DISTRO)"/setup.bash"
  # Last ditch, try and find something, in order of priority as listed in ROS_DISTROS.
  [[ -z "${s}" ]] || [[ ! -f "${s}" ]] && for d in ${ROS_DISTROS} ; do s="/opt/ros/"${d}"/setup.bash" 
    [[ -a ${s} ]] && break;
  done
  # Then source whatever the result is.
  source ${s} >/dev/null 2>&1 || {
          echo 1>&2 "I can't easily find where to source the ros environment from. Bailing.";
          return 1;
        }
  echo "Sourced ${s}..."
}

function set-ros-master {
  rossource
  echo "Setting ROS_MASTER to $1."
  export ROS_MASTER_URI=http://$1:11311
}