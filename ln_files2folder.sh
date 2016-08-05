#!/bin/bash


oldifs=$IFS
IFS='
'
find $1 |
while read f
do
    #dest=$(echo $f | sed "s#$1##")
    if [ -f "$f" ];then
        #ln -"${3-}" "$f" "$2"
        ln "${3}" "$f" "$2"
    else
        continue
    fi
done
IFS=$oldifs
