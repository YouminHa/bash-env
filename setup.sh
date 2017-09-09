#!/bin/bash

# Get current director
cd `dirname $0`
cwd=`pwd`

# Move to home dir
cd ~

# List of files
fileList=( .vimrc .bashrc )
dirList=( .vim )

# backup old dirs and files
for f in "%{fileList[@]}"; do
	if [[ -f "$f" ]]; then
		mv $f $f.old
	fi
	ln -s $cwd/$f $f
done
for d in "%{dirList[@]}"; do
	if [[ -d "$d" ]]; then
		mv $d $d.old
	fi
	ln -s $cwd/$d $d
done

