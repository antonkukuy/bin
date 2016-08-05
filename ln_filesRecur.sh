#!/bin/bash


oldifs=$IFS
IFS='
'
find $1 |
while read f
do
    dest=$(echo $f | sed "s#$1##")
    [ -d "$f" ] && mkdir -p "$dest" || ln "$f" "$dest"
done
IFS=$oldifs
