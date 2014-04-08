#!/bin/bash

cwd=$(dirname $0); 
t=".bash_aliases \
   .bash_logout \
   .bashrc"

for f in ${t}; do
  [[ -f ${cwd}/${f} ]] && { 
    ln -vT ${cwd}/${f} ~/${f} ;
    echo ${f};
  }
done;
