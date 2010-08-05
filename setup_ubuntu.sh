#!/bin/bash

sudo apt-get install \
	vim-gnome vim-doc \
	vim-vimoutliner \
	git-core git-svn git-doc gitk \
	remind

vim-addons install vimoutliner

SOURCES=/etc/apt/sources.list.d/avh4.list
sudo cp avh4.list /etc/apt/sources.list.d/

function install_key {
	echo "Installing key for $1 ($2)..."
	gpg --keyserver pgp.mit.edu --recv-keys $2
	gpg --export -a $2 | sudo apt-key add -
}

install_key Virtualbox 54422A4B98AB5139
install_key Dropbox FC918B335044912E
install_key Google A040830F7FAC5991

sudo apt-get update

sudo apt-get install \
	google-chrome-stable \
	virtualbox-3.2 \
	nautilus-dropbox

git config --global --add merge.conflictstyle diff3
git config --global --add color.ui auto
