# Arch Linux Setup

Very empty work in progress.

## Install Arch

* TODO - document this
* Take initial snapshot

## Ansible

```shell
sudo pacman -S ansible git
cd
git clone https://github.com/mewejo/arch-linux-setup.git
cd arch-linux-setup
ansible-playbook local.yml -K
```

Optionally enable CUPS

## After .ssh files are loaded up

Sets up dotfile repo

```shell
sh ./scripts/post-ssh-key.sh
```


