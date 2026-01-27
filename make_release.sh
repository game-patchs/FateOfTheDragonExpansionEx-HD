#!/bin/bash

echo >filelist.txt
find "." -type f -not -path "$PWD/.git/*" | while read line; do
  line="${line:2}"
  [ "$line" = 'filelist.txt' ] && continue
  [ "${line:0:4}" = '.git' ] && continue
  sha1sum "$line" >>filelist.txt
done

exit
