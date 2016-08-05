#!/bin/bash

usage(){
    echo `basename $0`: ERROR: $* 1>&2
    echo usage: `basename $0` '[file ...]' 1>&2
}

if expr $# \> 0 > /dev/null
then
    while expr $# \> 0 > /dev/null
    do
        printf "%s\t%s\t/%s\n" `basename $1` `basename $1` `basename $1`
        shift
    done
else
    usage "unknown option $1"
fi
