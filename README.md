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
- `scripts/install-web-api` — installs the Web / API testing module.
- `scripts/install-ad-windows` — installs the Linux-side AD / Windows internal assessment module.

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

- `packages/web-api-tools.md`
- `packages/ad-windows-tools.md`
- `packages/reversing-exploitdev.txt`
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


## Documentation

Detailed documentation is available in the `docs/` directory.

- `docs/install.md` — manual installation guide
- `docs/workflow.md` — operational workflow and target structure
- `docs/obsidian.md` — Obsidian vault, templates and note-taking workflow
- `docs/tmux.md` — tmux workflow, shortcuts and session layout
- `docs/kde-customization.md` — KDE Plasma visual customization
- `docs/project-structure.md` — repository architecture and maintenance rules

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

## Repository Policy

This repository is public but not open to external contributions.

Alice Red Team Workstation is shared as a read-only public project so that other users can study it, fork it, adapt it and build their own versions.

External pull requests, issues, discussions and feature requests are not accepted.

Users are welcome to fork the repository and maintain their own versions under the terms of the license.
