#!/bin/sh

git clone --bare git@github.com:mewejo/dotfiles.git $HOME/.dotfiles;
/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout;
