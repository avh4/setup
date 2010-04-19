#!/bin/sh

mkdir build || exit 1
cd build

# Install git
wget http://www.kernel.org/pub/software/scm/git/git-1.7.0.4.tar.gz
tar zxvf git-1.7.0.4.tar.gz
cd git-1.7.0.4
make configure
./configure --prefix="$HOME" NO_CURL=1
make
rm -vf ~/bin/git-*
make install
