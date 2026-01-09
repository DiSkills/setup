#!/bin/env bash

ASSET=nvim-linux-x86_64

# Getting the latest version of neovim
VERSION=`curl -sL https://api.github.com/repos/neovim/neovim/releases/latest | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/' | cut -c 2-`
echo The latest version of neovim is $VERSION

# Downloading the latest version
curl -sLO https://github.com/neovim/neovim/releases/latest/download/$ASSET.tar.gz
tar -xzf $ASSET.tar.gz

# Building a Debian package
PACKAGE=nvim
mkdir $PACKAGE $PACKAGE/DEBIAN $PACKAGE/usr
mv $ASSET $PACKAGE/usr/local
printf "$(cat ./control)\n" $VERSION $(git config user.name) > $PACKAGE/DEBIAN/control
dpkg-deb --build $PACKAGE

# Installing the package
sudo apt install ./$PACKAGE.deb

# Removing the files
rm -rf $ASSET.tar.gz $PACKAGE $PACKAGE.deb
