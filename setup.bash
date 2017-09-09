#!/bin/bash

# Get current directory
cd `dirname $0`
cwd=`pwd`

# Move to home dir
cd ~

# List of files
fileList=( .vimrc .bashrc )
dirList=( .vim )

# backup old dirs and files
for f in "${fileList[@]}"; do
	if [[ -f "$f" ]]; then
		echo "Renaming $f to $f.old ..."
		mv $f $f.old
	fi
	echo "Creating symlink $f pointing $cwd/$f ..."
	ln -s $cwd/$f $f
done
for f in "${dirList[@]}"; do
	if [[ -d "$f" ]]; then
		echo "Renaming $f to $f.old ..."
		mv $f $f.old
	fi
	echo "Creating symlink $f pointing $cwd/$f ..."
	ln -s $cwd/$f $f
done

