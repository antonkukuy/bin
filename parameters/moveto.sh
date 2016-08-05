#!/bin/sh

directory=${1:?"`echo -e \"\e[35m Usage: directory destination and * (all files)\e[0m\"`"};shift
mv $* $directory
