function rossource {
  x=`pwd`;
  D="hydro \
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
  # Last ditch, try and find something, in order of priority as listed in D.
  [[ -z "${s}" ]] || [[ ! -f "${s}" ]] && for d in ${D} ; do s="/opt/ros/"${d}"/setup.bash" 
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
