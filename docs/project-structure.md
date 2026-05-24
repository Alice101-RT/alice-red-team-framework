# Project Structure

This document explains the structure of the Alice Red Team Workstation repository.

The project is designed to be modular, reproducible and easy to audit.

---

## Repository Layout

Main repository structure:

- `docs/`
- `dotfiles/`
- `obsidian-templates/`
- `packages/`
- `scripts/`
- `install.sh`
- `README.md`
- `.gitignore`

The repository is intentionally simple. Each directory has a specific role and should remain focused.

---

## docs/

The `docs/` directory contains project documentation.

Current documents:

- `install.md` — manual installation guide.
- `workflow.md` — operational workflow.
- `obsidian.md` — Obsidian vault and templates workflow.
- `tmux.md` — tmux usage and session structure.
- `kde-customization.md` — KDE visual setup.
- `project-structure.md` — repository architecture.

Documentation should explain how the workstation is assembled, used and extended.

---

## dotfiles/

The `dotfiles/` directory contains user configuration files.

Current files:

- `zshrc`
- `starship.toml`
- `kitty.conf`
- `tmux.conf`
- `nanorc`

These files are copied to the user home directory by the installer.

Expected destinations:

| File | Destination |
|---|---|
| `zshrc` | `~/.zshrc` |
| `starship.toml` | `~/.config/starship/starship.toml` |
| `kitty.conf` | `~/.config/kitty/kitty.conf` |
| `tmux.conf` | `~/.tmux.conf` |
| `nanorc` | `~/.nanorc` |

---

## obsidian-templates/

The `obsidian-templates/` directory contains reusable Markdown templates for Obsidian.

Current templates:

- `machine-template.md`
- `finding-template.md`
- `service-enumeration-template.md`
- `credentials-template.md`
- `exfil-simulation-template.md`
- `report-template.md`
- `command-notes-template.md`

Only reusable templates should be stored here.

Do not include:

- personal vault notes
- dashboards
- target notes
- loot
- evidence
- screenshots
- private information

---

## packages/

The `packages/` directory contains package lists and tooling maps.

Current files:

- `base-packages.txt`
- `official-packages.txt`
- `aur-packages.txt`
- `offensive-core.txt`
- `redteam-arsenal.md`
- `reversing-exploitdev.txt`

Package files are used to organize tooling by installation method and operational purpose.

The goal is to avoid blindly installing every tool.

---

## scripts/

The `scripts/` directory contains executable helper scripts.

Current scripts:

- `alicebanner`
- `newtarget`
- `install-offensive-core`

---

## scripts/alicebanner

`alicebanner` displays the Alice Red Team Workstation terminal banner.

It is used for:

- screenshots
- workspace identity
- terminal presentation

It can be launched with:

`alicebanner`

or with the configured alias:

`banner`

---

## scripts/newtarget

`newtarget` creates a structured tmux workspace and target directory.

Example:

`newtarget htb-machine-lame`

It creates a target workspace under:

`~/Labs/<target-name>`

The generated target structure includes:

- `recon/`
- `enum/`
- `attack/`
- `shell/`
- `privesc/`
- `exfil/`
- `loot/`
- `notes/`
- `services/`
- `scans/`
- `screenshots/`
- `reports/`

It also creates a tmux session with windows for the main operational phases.

---

## scripts/install-offensive-core

`install-offensive-core` installs the initial offensive core toolset.

This module is separate from the base installer.

It is intended for general pentesting and offensive security tooling.

Advanced tooling should remain modular and should not be installed blindly by default.

---

## install.sh

`install.sh` is the base workstation installer.

It installs and configures:

- base packages
- shell environment
- dotfiles
- scripts
- Obsidian templates
- workspace directories

It should remain focused on the base workstation.

Advanced offensive tooling should be installed through modular scripts.

---

## README.md

`README.md` is the public landing page of the repository.

It should explain:

- what the project is
- what it includes
- how to install it
- how to use it
- what the project philosophy is
- what the roadmap contains

The README should stay concise and link to detailed documentation inside `docs/`.

---

## .gitignore

`.gitignore` protects the repository from accidental commits of sensitive or temporary data.

It should exclude:

- logs
- loot
- credentials
- keys
- screenshots
- evidence
- PCAPs
- private notes
- tokens
- temporary files

The `.gitignore` is not a substitute for operational discipline.

---

## Design Principles

Alice Red Team Workstation follows these principles:

- workflow before tooling
- modular installation
- readable configuration
- clear documentation
- no blind tool dumping
- no sensitive data in the repository
- offensive work only under approved ROE
- reproducible workstation setup

---

## Future Structure

Possible future installer modules:

- `scripts/install-web-api`
- `scripts/install-ad-windows`
- `scripts/install-pivoting`
- `scripts/install-reversing`
- `scripts/install-purple-team`
- `scripts/install-cloud`
- `scripts/install-ot-ics`

Possible future documentation:

- `docs/web-api.md`
- `docs/active-directory.md`
- `docs/reversing-exploitdev.md`
- `docs/purple-team.md`
- `docs/cloud.md`
- `docs/ot-ics.md`

The project should grow by modules, not by uncontrolled accumulation.

---

## Public Repository Rules

The public repository may include:

- documentation
- reusable templates
- dotfiles
- installation scripts
- package lists
- workflow scripts

The public repository must not include:

- personal Obsidian vault content
- operational target notes
- credentials
- loot
- screenshots from real operations
- evidence
- logs
- VPN files
- SSH private keys
- API tokens
- client data

---

## Maintenance Notes

When adding a new feature, update the relevant files:

- New script: update `scripts/` and document it.
- New package group: update `packages/`.
- New workflow: update `docs/workflow.md`.
- New tmux behavior: update `docs/tmux.md`.
- New Obsidian template: update `obsidian-templates/` and `docs/obsidian.md`.
- New installation step: update `install.sh` and `docs/install.md`.

Every change should be committed with a clear Git message.
