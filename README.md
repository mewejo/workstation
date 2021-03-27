# Arch Linux Setup

Very empty work in progress.

## Install Arch

* TODO - document this
* Take initial snapshot

## Ansible

```shell
sudo pacman -S ansible
cd
git clone git@github.com:mewejo/dotfiles.git
cd arch-linux-setup
ansible-playbook local.yml -K
```

## After .ssh files are loaded up

Sets up dotfile repo

```shell
sh ./scripts/post-ssh-key.sh
```


