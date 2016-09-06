#!/bin/bash

usage() {
    echo `basename $0`: ERROR: $* 1>&2
    echo usage: `basename $0` '[-s] [target directory] [destonation directory]' 1>&2
    exit 1
}

oldifs=$IFS
IFS='
'

while :
do
        case "$1" in
        -s) s=-s;;
        --) shift; break;;
        -*) usage "bad argument $1";;
        *) break;
        esac
        shift
done
find $1 |
while read f
do
    #dest=$(echo $f | sed "s#$1##")
    if [ -f "$f" ];then
        #ln -"${3-}" "$f" "$2"
        ln $s "$f" "$2"
    else
        continue
    fi
done
IFS=$oldifs
