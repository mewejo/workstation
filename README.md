# Workstation provisioning

Ansible playbook for provisioning Fedora Silverblue workstations (optionally Sway spin) with a full development environment, Wayland desktop, containerisation tools, and productivity applications.

## Quick start

Requires an SSH key at `/home/josh/.ssh/id_rsa` before running.

```bash
curl -sL setup.bonfield.me | bash
```

This clones the repository and prompts you to run the setup script, which will:

1. Pull and configure [dotfiles](https://github.com/mewejo/dotfiles) (bare repo)
2. Disable GNOME Software auto-updates
3. Set the hostname
4. Install Ansible (if needed)
5. Run the main playbook

## What gets installed

### System packages (rpm-ostree)

| Category | Packages |
|---|---|
| Desktop (Sway/Wayland) | sway, swaybg, swayidle, swaylock, waybar, wofi, mako, grim, slurp, wdisplays, light, xdg-desktop-portal-wlr |
| Shell & terminal | fish, kitty |
| Containers & virtualisation | podman, docker, docker-compose, vagrant, virt-manager, virt-install, libvirt-daemon-kvm, qemu-kvm |
| Dev tools | vim, git, jq, ansible |
| System utilities | htop, iotop, snapper, wireguard-tools, playerctl, pavucontrol, logiops |

### Flatpak applications

Thunderbird, Slack, Spotify, Discord, LibreOffice, Chromium, Subsurface

### Additional tools

- **JetBrains Toolbox** — installed to `~/bin/jetbrains`
- **Lazygit** — installed to `~/bin/lazygit`

## Roles

| Role | Purpose |
|---|---|
| `system` | Disables SELinux (permissive), sets up polkit rules for passwordless libvirt access |
| `rpm-ostree` | Installs system packages and live-applies changes |
| `user` | Configures the josh user — shell (fish), groups (docker, libvirt), SSH keys (from GitHub), git config (GPG signing, no pull rebase) |
| `flatpak` | Sets up Flathub/Fedora repos at user level and installs desktop applications |
| `services` | Enables docker, sshd, and snapper timeline timer |
| `tools` | Installs JetBrains Toolbox, Lazygit, and clones work repositories |
| `ide` | Creates development directory structure (`~/Development/Personal`, `~/Development/Grizzlyware`) |

## Inventory

Hosts are defined in `hosts` and grouped under `[workstation]`. The setup script targets the current hostname.

## License

MIT — see [LICENSE](LICENSE).
