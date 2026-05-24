# Manual Installation Guide

This document describes the manual installation process for **Alice Red Team Framework**.

The recommended installation method for most users will be the automated installer.  
The manual process is provided for users who want to understand, review, customize or troubleshoot each step of the setup.

Manual installation is useful when you want to:

- review every package before installing it
- adapt the setup to an existing Arch Linux environment
- install only specific components
- debug a failed automated installation
- understand how the workstation is assembled

---

## 1. Requirements

Recommended base system:

- Arch Linux
- KDE Plasma
- X11 session
- Kitty terminal
- Internet connection
- User with sudo privileges

Recommended virtualization setup:

- VirtualBox or VMware
- Guest additions installed
- Dynamic resize enabled
- Shared clipboard enabled if needed

Recommended shell environment:

- Zsh
- Starship
- tmux
- Kitty

---

## 2. Base Packages

Install the required packages:

`sudo pacman -S --needed git base-devel zsh zsh-completions starship kitty tmux fastfetch btop tree less eza bat fzf neovim obsidian`

Optional but recommended packages:

`sudo pacman -S --needed ripgrep fd unzip zip p7zip curl wget`

Useful desktop packages:

`sudo pacman -S --needed papirus-icon-theme breeze-icons`

---

## 3. Clone Repository

When the project is available on GitHub, clone it with:

`git clone https://github.com/<user>/alice-red-team-workstation.git`

Then enter the project directory:

`cd alice-red-team-workstation`

For local development:

`cd ~/Projects/alice-red-team-workstation`

---

## 4. Install Dotfiles

Copy the Zsh configuration:

`cp dotfiles/zshrc ~/.zshrc`

Create Starship configuration directory:

`mkdir -p ~/.config/starship`

Copy Starship configuration:

`cp dotfiles/starship.toml ~/.config/starship.toml`

Create Kitty configuration directory:

`mkdir -p ~/.config/kitty`

Copy Kitty configuration:

`cp dotfiles/kitty.conf ~/.config/kitty/kitty.conf`

Copy tmux configuration:

`cp dotfiles/tmux.conf ~/.tmux.conf`

Copy Nano configuration:

`cp dotfiles/nanorc ~/.nanorc`
 ÄÄ

---

## 5. Install Scripts

Create the scripts directory:

`mkdir -p ~/Scripts`

Copy scripts:

`cp scripts/alicebanner ~/Scripts/alicebanner`

`cp scripts/newtarget ~/Scripts/newtarget`

Make scripts executable:

`chmod +x ~/Scripts/alicebanner ~/Scripts/newtarget`

The included `.zshrc` adds `~/Scripts` to the PATH.

Reload Zsh:

`source ~/.zshrc`

Test the banner:

`banner`

or:

`alicebanner`

Test target workspace creation:

`newtarget sample-target`

---

## 6. Set Zsh As Default Shell

Check Zsh path:

`which zsh`

Set Zsh as the default shell:

`chsh -s /usr/bin/zsh`

Log out and log back in.

Verify current shell:

`echo $SHELL`

Expected result:

`/usr/bin/zsh`

---

## 7. Create Workspace Directories

The `.zshrc` automatically creates the core workspace directories, but they can also be created manually:

`mkdir -p ~/Labs ~/Tools ~/Notes ~/Loot ~/Reports ~/Payloads ~/Wordlists ~/Scripts ~/Projects`

`mkdir -p ~/Labs/{HTB,THM,PortSwigger,OSCP}`

`mkdir -p ~/Tools/{recon,web,ad,privesc,postexploitation}`

`mkdir -p ~/Wordlists/{web,passwords,usernames}`

`mkdir -p ~/Payloads/{web,shells,windows,linux}`

`mkdir -p ~/Loot/{creds,hashes,configs,screenshots,pcaps}`

`mkdir -p ~/Reports/{templates,finished,drafts}`

---

## 8. Obsidian Templates

Create the Obsidian vault manually.

Recommended vault path:

`~/Notes/RedTeamVault`

Create the templates folder:

`mkdir -p ~/Notes/RedTeamVault/10_Templates`

Copy templates:

`cp obsidian-templates/*.md ~/Notes/RedTeamVault/10_Templates/`

Inside Obsidian:

1. Open Settings.
2. Enable the Templates core plugin.
3. Set template folder location to `10_Templates`.
4. Test by inserting the Machine Template into a new target note.

Included templates:

- Machine Template
- Finding Template
- Service Enumeration Template
- Credentials Template
- Exfil Simulation Template
- Report Template
- Command Notes Template

---

## 9. KDE Visual Setup

This project currently assumes manual KDE customization.

Recommended visual components:

- Dark theme
- Sweet KDE color scheme
- Candy icons
- Oxygen yellow or custom cursor
- Anime/cyberpunk wallpaper
- Floating bottom panel
- Kitty with transparency
- Starship prompt

Suggested KDE settings:

- Theme: dark
- Color scheme: Sweet KDE or similar
- Icons: Candy Icons or Papirus Dark
- Terminal font: JetBrainsMono Nerd Font
- Session type: X11 when using VirtualBox
- Panel: floating bottom panel

Full KDE visual setup documentation should be maintained separately in `docs/kde-customization.md`.

---

## 10. tmux Workflow

The included tmux configuration uses `CTRL + A` as the prefix.

Useful shortcuts:

| Shortcut | Action |
|---|---|
| `CTRL + A`, then `c` | create new window |
| `CTRL + A`, then `n` | next window |
| `CTRL + A`, then `p` | previous window |
| `CTRL + A`, then `"` | horizontal split |
| `CTRL + A`, then `%` | vertical split |
| `CTRL + A`, then `d` | detach session |
| `CTRL + A`, then `x` | close pane |

Useful aliases:

| Alias | Command |
|---|---|
| `tls` | `tmux ls` |
| `ta <session>` | `tmux attach -t <session>` |
| `tk <session>` | `tmux kill-session -t <session>` |
| `tn <session>` | `tmux new -s <session>` |

---

## 11. Target Workflow

Create a new target workspace:

`newtarget <target-name>`

Example:

`newtarget htb-machine-lame`

This creates a tmux session and a directory structure under:

`~/Labs/<target-name>`

Target structure:

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

---

## 12. Post-Install Checks

Run:

`banner`

`ff`

`tmux -V`

`newtarget test-target`

Check that:

- Kitty opens correctly
- Zsh is active
- Starship prompt is visible
- tmux status bar is styled
- `newtarget` creates a target workspace
- Obsidian templates are available
- aliases such as `labs`, `tools`, `loot`, `reports`, `tls`, `ta`, `tk` work correctly

---

## 13. Security Notes

Do not copy personal vault content into the repository.

Do not commit:

- loot
- credentials
- targets
- screenshots
- evidence
- logs
- tokens
- private notes
- VPN files
- SSH private keys
- API keys

The `.gitignore` file is designed to reduce accidental exposure, but operational discipline is still required.

---

## 14. Manual Install Philosophy

The manual installation path exists for transparency.

Users should be able to understand:

- what is installed
- where files are copied
- how scripts are exposed in the PATH
- how templates are imported
- how the workflow is structured

The automatic installer should reproduce this process safely, but the manual guide remains useful for review, customization and troubleshooting.
