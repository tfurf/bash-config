#!/bin/bash

pluglist=
if [[ $# == 0 ]]; then
    pluglist="$(grep '\*\*[^\*]*\*\*' "source-list.md" | sed 's/^....\([^:]*\)..:.*$/\1/')"
else
    pluglist="$@"
fi
for f in $pluglist
do
    clone="$(grep $f "source-list.md" | sed 's/.*`\(.*\)`.*$/\1/')"
    d=$(echo $clone | cut -f4 -d' ')
    if [[ ! -d "$d" ]]; then
        eval $clone
    fi
done
