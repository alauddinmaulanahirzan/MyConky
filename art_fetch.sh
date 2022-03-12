#!/bin/zsh
file=$(mpc -f %file% -P password | grep flac | sed "s/.*\///");
target="$(dirname "$(find /media/maulana/Music -type f -name "$file")" | tail -n1)"
if [[ "$file" != "$cover" ]] then cp $target"/cover"* /tmp/cover.png && cover=$file; fi
