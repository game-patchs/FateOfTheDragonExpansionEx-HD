#!/bin/bash

echo >filelist.txt
find "." -type f -not -path "$PWD/.git/*" | while read line; do
  line="${line:2}"
  [ "$line" = 'filelist.txt' ] && continue
  [ "${line:0:4}" = '.git' ] && continue
  hash=`sha1sum "$line"`
  echo "${hash:0:40}  $line" >> filelist.txt
done

exit

