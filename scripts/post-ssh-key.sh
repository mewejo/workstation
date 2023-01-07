#!/bin/sh

git clone --bare git@github.com:mewejo/dotfiles.git $HOME/.dotfiles;
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no;
dotfiles checkout;
dotfiles push --set-upstream origin master;
systemctl enable ssh-agent --user;
~/.scripts/sway/wallpaper.php
chsh -s $(which fish)
git config --global commit.gpgsign true

