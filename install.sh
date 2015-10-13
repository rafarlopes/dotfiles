#!/usr/bin/env bash

# check if git was installed
command -v git >/dev/null 2>&1 || {
	echo >&2 "I require git but it's not installed. Aborting...";
	exit 0;
}

# dotfiles
DOTFILES_REPO="https://github.com/rafarlopes/dotfiles.git"

git clone $DOTFILES_REPO ~/.dotfiles

cp ~/.dotfiles/files/gitconfig ~/.gitconfig
#cp ~/.dotfiles/files/gitignore ~/.gitignore
cp ~/.dotfiles/files/bash_profile ~/.bash_profile

rm -Rf ~/.dotfiles

#bash
BASH_REPO="https://github.com/rafarlopes/bash.git"

git clone $BASH_REPO ~/.bash

source ~/.bash_profile
