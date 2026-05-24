# Alice Red Team Workstation

**Alice Red Team Workstation** is a modular Arch Linux Red Team workstation focused on operator workflow, tmux, Kitty, Zsh, Obsidian templates and offensive security tooling.

The project is designed as a reproducible and shareable workstation setup for authorized offensive security work, Red Team methodology, adversary emulation support, structured note-taking, technical reporting and operator productivity.

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
- Modular offensive tooling
- Structured Red Team workflows
- Reusable documentation templates
- Operator-focused terminal tooling

This is not intended to be a bloated pentesting distribution.

Alice Red Team Workstation is designed as a controlled, modular and documented workstation environment.

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
- exfiltration simulation and impact validation under approved ROE
- adversary emulation support
- evidence collection
- reporting
- knowledge management
- detection validation
- modular tooling

---

## Repository Policy

This repository is public but not open to external contributions.

Alice Red Team Workstation is shared as a read-only public project so that other users can study it, fork it, adapt it and build their own versions.

External pull requests, issues, discussions and feature requests are not accepted.

Users are welcome to fork the repository and maintain their own versions under the terms of the license.

---

## Current Components

Alice Red Team Workstation currently includes the following components.

### Base Workstation

- `install.sh` — base installer for the workstation environment.
- `dotfiles/` — terminal, shell, prompt, tmux and nano configuration.
- `scripts/alicebanner` — terminal banner for workspace identity and screenshots.
- `scripts/newtarget` — creates a structured tmux workspace for a target.

### Modular Installers

- `scripts/install-offensive-core` — installs the initial offensive security core tooling.
- `scripts/install-web-api` — installs the Web / API testing module.
- `scripts/install-ad-windows` — installs the Linux-side AD / Windows internal assessment module.
- `scripts/install-pivoting` — installs pivoting and tunneling support tools.
- `scripts/install-credentials` — installs credentials, hashes and secrets tooling.
- `scripts/install-reversing` — installs reversing, exploit development and vulnerability research tooling.
- `scripts/install-purple-team` — installs Purple Team and detection engineering support tools.
- `scripts/install-exfil-impact` — installs exfiltration simulation and impact validation support tools.
- `scripts/install-c2-adversary-emulation` — installs safe support dependencies for C2 and adversary emulation workflows.

### Package Maps

- `packages/base-packages.txt` — base workstation package list.
- `packages/official-packages.txt` — packages expected to be installed through pacman.
- `packages/aur-packages.txt` — packages expected to require AUR/yay.
- `packages/offensive-core.txt` — general offensive core package list.
- `packages/web-api-tools.md` — Web / API tooling map.
- `packages/ad-windows-tools.md` — AD / Windows internal tooling map.
- `packages/pivoting-tunneling-tools.md` — pivoting and tunneling tooling map.
- `packages/credentials-secrets-tools.md` — credentials and secrets tooling map.
- `packages/reversing-exploitdev.txt` — reversing, exploit development and vulnerability research package list.
- `packages/purple-team-detection-tools.md` — Purple Team and detection tooling map.
- `packages/exfil-impact-tools.md` — exfiltration simulation and impact validation tooling map.
- `packages/c2-adversary-emulation-tools.md` — C2 and adversary emulation tooling map.
- `packages/redteam-arsenal.md` — broader Red Team arsenal roadmap and classification map.

### Dotfiles

- `dotfiles/zshrc`
- `dotfiles/starship.toml`
- `dotfiles/kitty.conf`
- `dotfiles/tmux.conf`
- `dotfiles/nanorc`

### Scripts

- `scripts/alicebanner` — terminal banner for screenshots and workspace identity.
- `scripts/newtarget` — creates a structured tmux workspace and target directory.
- `scripts/install-offensive-core` — installs the offensive core toolkit.
- `scripts/install-web-api` — installs the Web / API module.
- `scripts/install-ad-windows` — installs the AD / Windows internal module.
- `scripts/install-pivoting` — installs pivoting and tunneling support tooling.
- `scripts/install-credentials` — installs credentials and secrets tooling.
- `scripts/install-reversing` — installs reversing and exploit development tooling.
- `scripts/install-purple-team` — installs Purple Team and detection tooling.
- `scripts/install-exfil-impact` — installs exfiltration and impact validation support tooling.
- `scripts/install-c2-adversary-emulation` — installs safe C2/adversary emulation support dependencies.

### Obsidian Templates

- `obsidian-templates/machine-template.md`
- `obsidian-templates/finding-template.md`
- `obsidian-templates/service-enumeration-template.md`
- `obsidian-templates/credentials-template.md`
- `obsidian-templates/exfil-simulation-template.md`
- `obsidian-templates/report-template.md`
- `obsidian-templates/command-notes-template.md`

### Documentation

- `docs/install.md`
- `docs/workflow.md`
- `docs/obsidian.md`
- `docs/tmux.md`
- `docs/kde-customization.md`
- `docs/project-structure.md`

---

## Installation

The base workstation installer is:

`install.sh`

It installs and configures:

- base packages
- shell environment
- Kitty configuration
- Starship prompt
- tmux configuration
- nano configuration
- workspace scripts
- Obsidian templates
- workspace directories

Manual installation instructions are available in:

`docs/install.md`

---

## Modular Installation

Alice Red Team Workstation is designed to be modular.

The base installer prepares the workstation. Additional modules can be installed separately depending on operational need.

Available modules:

- `scripts/install-offensive-core`
- `scripts/install-web-api`
- `scripts/install-ad-windows`
- `scripts/install-pivoting`
- `scripts/install-credentials`
- `scripts/install-reversing`
- `scripts/install-purple-team`
- `scripts/install-exfil-impact`
- `scripts/install-c2-adversary-emulation`

Modules are intentionally separated to avoid uncontrolled tool dumping.

Sensitive modules such as C2, adversary emulation and exfiltration support are designed to prepare dependencies and workspace structure. They do not execute operations automatically.

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

This creates a structured tmux session and target workspace under:

`~/Labs/<target-name>`

---

## tmux Workflow

Alice Red Team Workstation uses tmux to keep offensive work organized.

The default target session created by `newtarget` includes windows for:

- recon
- enum
- attack
- shell
- privesc
- exfil
- loot
- notes
- services

Useful aliases:

- `tls` — list tmux sessions.
- `ta <session>` — attach to a tmux session.
- `tk <session>` — kill a tmux session.
- `tn <session>` — create a new tmux session.

Detailed tmux documentation is available in:

`docs/tmux.md`

---

## Obsidian Workflow

Obsidian is used as the structured note-taking and documentation layer.

It supports:

- target notes
- service enumeration
- credentials tracking
- findings
- evidence
- exfiltration simulation notes
- command notes
- reports
- lessons learned

The recommended vault is:

`~/Notes/RedTeamVault`

The included reusable templates are stored in:

`obsidian-templates/`

Detailed Obsidian documentation is available in:

`docs/obsidian.md`

---

## C2 / Adversary Emulation

Alice Red Team Workstation includes a C2 / adversary emulation support module.

This module is intentionally conservative.

It does not automatically deploy C2 frameworks, start listeners, generate payloads or execute agents.

It only prepares safe support dependencies and workspace directories for controlled, authorized environments.

C2 frameworks and adversary emulation tools must be installed, reviewed and executed manually under approved Rules of Engagement.

---

## Exfiltration / Impact Validation

Exfiltration is treated as a controlled Red Team and advanced pentesting phase.

The project supports exfiltration simulation and impact validation using:

- synthetic data
- marker files
- approved sample data
- defined channels
- volume limits
- evidence collection
- detection validation
- cleanup documentation

The exfiltration module does not execute transfers automatically.

All exfiltration testing must be explicitly authorized and documented under ROE.

---

## Documentation

Detailed documentation is available in the `docs/` directory.

- `docs/install.md` — manual installation guide.
- `docs/workflow.md` — operational workflow and target structure.
- `docs/obsidian.md` — Obsidian vault, templates and note-taking workflow.
- `docs/tmux.md` — tmux workflow, shortcuts and session layout.
- `docs/kde-customization.md` — KDE Plasma visual customization.
- `docs/project-structure.md` — repository architecture and maintenance rules.

---

## Security Notice

This project is intended for:

- authorized security testing
- training environments
- lab work
- defensive validation
- Red Team methodology practice
- adversary emulation support
- personal workstation reproducibility

Do not use this setup or any included workflow against systems without explicit authorization.

---

## What Should Not Be Committed

Never commit:

- loot
- credentials
- hashes
- tokens
- SSH private keys
- API keys
- VPN files
- screenshots from real operations
- evidence from real operations
- PCAPs from real environments
- personal Obsidian vault content
- client data
- target data
- private notes

The `.gitignore` file helps reduce accidental exposure, but operational discipline is still required.

---

## License

This project is released under the MIT License.

See:

`LICENSE`

---

## Author

Created and maintained by:

`Alice101-RT`

Alice Red Team Workstation is shared publicly as a read-only project for study, adaptation and personal workstation reproducibility.
