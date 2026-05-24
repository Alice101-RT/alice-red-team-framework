# Alice Red Team Workstation

**Alice Red Team Workstation** is a custom Arch Linux based offensive security workspace focused on Red Team workflow, pentesting methodology, structured note-taking and operator productivity.

This project is designed as a personal, reproducible and shareable workstation setup for offensive security training, authorized operations, Red Team methodology and technical reporting.

---

## Purpose

The goal of this project is to provide a clean, aesthetic and functional offensive security workstation built around:

- Arch Linux
- KDE Plasma
- Kitty
- Zsh
- Starship
- tmux
- Obsidian
- Structured Red Team workflows
- Reusable pentesting templates
- Operator-focused terminal tooling

This is not meant to be a bloated pentesting distribution.

It is a controlled, modular and documented workstation environment.

---

## Philosophy

Alice Red Team Workstation follows a simple principle:

**Workflow before tooling.**

The objective is not to install hundreds of tools blindly, but to build a system that supports:

- clear methodology
- structured reconnaissance
- disciplined enumeration
- controlled exploitation
- privilege escalation tracking
- exfiltration simulation under approved ROE
- evidence collection
- reporting
- knowledge management

---

## Current Components
## Current Components

### Base Installer

- `install.sh` — installs the base Alice Red Team Workstation environment.

The base installer handles:

- core packages
- shell environment
- Kitty configuration
- Starship prompt
- tmux configuration
- scripts
- Obsidian templates
- workspace directories

### Modular Installers

- `scripts/install-offensive-core` — installs the initial offensive security core tooling.

Future modules may include:

- Active Directory / Windows tooling
- Web / API tooling
- Pivoting / tunneling tooling
- Reversing / exploit development tooling
- Purple Team / detection tooling
- Cloud tooling
- OT / ICS lab tooling

### Dotfiles

- `dotfiles/zshrc`
- `dotfiles/starship.toml`
- `dotfiles/kitty.conf`
- `dotfiles/tmux.conf`
- `dotfiles/nanorc`

### Scripts

- `scripts/alicebanner` — terminal banner for screenshots and workspace identity
- `scripts/newtarget` — creates a structured tmux workspace and target directory
- `scripts/install-offensive-core` — installs the offensive core toolkit

### Package Lists

- `packages/base-packages.txt`
- `packages/official-packages.txt`
- `packages/aur-packages.txt`
- `packages/offensive-core.txt`
- `packages/redteam-arsenal.md`
- `packages/reversing-exploitdev.txt`

### Obsidian Templates

- Machine Template
- Finding Template
- Service Enumeration Template
- Credentials Template
- Exfil Simulation Template
- Report Template
- Command Notes Template

### Documentation

- `docs/install.md`
- `docs/workflow.md`
- `docs/obsidian.md`
- `docs/tmux.md`
- `docs/kde-customization.md`
### Dotfiles

- Zsh configuration
- Starship prompt
- Kitty terminal configuration
- tmux configuration

### Scripts

- `alicebanner` — terminal banner for screenshots and workspace identity
- `newtarget` — creates a structured tmux workspace and target directory

### Obsidian Templates

- Machine Template
- Finding Template
- Service Enumeration Template
- Credentials Template
- Exfil Simulation Template
- Report Template
- Command Notes Template

---

## Workspace Flow

The operational flow is structured around:

- recon
- enum
- attack
- shell
- privesc
- exfil
- loot
- notes
- services
- reports

A new target workspace can be created with:

`newtarget <target-name>`

Example:

`newtarget htb-machine-lame`

---

## Repository Structure

- `docs/`
- `dotfiles/`
- `obsidian-templates/`
- `scripts/`
- `README.md`

---

## Important Notice

This project is intended for:

- authorized security testing
- training environments
- lab work
- defensive validation
- Red Team methodology practice
- personal workstation reproducibility

Do not use this setup or any included workflow against systems without explicit authorization.

---

## Roadmap

- [ ] Add installation script
- [ ] Add package list
- [ ] Add KDE visual setup notes
- [ ] Add Obsidian setup guide
- [ ] Add tmux workflow guide
- [ ] Add offensive tooling modules
- [ ] Add Burp Suite setup
- [ ] Add Python / pipx workflow
- [ ] Add GitHub installation documentation
- [ ] Consider Arch ISO profile in the future
