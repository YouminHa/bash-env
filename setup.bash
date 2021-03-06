#!/bin/bash

# Get current directory
cd `dirname $0`
cwd=`pwd`

# Move to home dir
cd ~

# List of files
fileList=( .bashrc .gitconfig .vimrc )
dirList=( .vim )

# backup old dirs and files
for f in "${fileList[@]}"; do
	if [[ -f "$f" && ! -L "$f" ]]; then
		if [[ -f "$f.old" ]]; then
			echo "$f.old file already exists! Remove it and try again."
		else
			echo "Renaming $f to $f.old ..."
			mv $f $f.old
		fi
	fi
	echo "Creating symlink $f pointing $cwd/$f ..."
	ln -s -f $cwd/$f $f
done
for f in "${dirList[@]}"; do
	if [[ -d "$f" && ! -L "$f" ]]; then
		if [[ -d "$f.old" ]]; then
			echo "$f.old directory already exists! Remove it and try again."
		else
			echo "Renaming $f to $f.old ..."
			mv $f $f.old
		fi
	fi
	echo "Creating symlink $f pointing $cwd/$f ..."
	ln -s -f $cwd/$f $f
done

