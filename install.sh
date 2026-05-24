#!/bin/bash

# ==========================================================
# Alice Red Team Workstation - Base Installer
# ==========================================================

set -e

PINK="\033[1;35m"
CYAN="\033[1;36m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
RED="\033[1;31m"
RESET="\033[0m"

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo -e "${PINK}"
echo "      █████╗ ██╗     ██╗ ██████╗███████╗"
echo "     ██╔══██╗██║     ██║██╔════╝██╔════╝"
echo "     ███████║██║     ██║██║     █████╗"
echo "     ██╔══██║██║     ██║██║     ██╔══╝"
echo "     ██║  ██║███████╗██║╚██████╗███████╗"
echo "     ╚═╝  ╚═╝╚══════╝╚═╝ ╚═════╝╚══════╝"
echo -e "${RESET}"

echo -e "${CYAN}ALICE RED TEAM WORKSTATION - BASE INSTALLER${RESET}"
echo

# ----------------------------------------------------------
# Safety checks
# ----------------------------------------------------------

if ! command -v pacman >/dev/null 2>&1; then
    echo -e "${RED}[!] pacman not found. This installer is intended for Arch Linux based systems.${RESET}"
    exit 1
fi

if [ "$EUID" -eq 0 ]; then
    echo -e "${RED}[!] Do not run this script as root.${RESET}"
    echo -e "${YELLOW}Run it as your normal user. The script will ask for sudo when needed.${RESET}"
    exit 1
fi

echo -e "${GREEN}[+] Running from:${RESET} $PROJECT_DIR"

# ----------------------------------------------------------
# Packages
# ----------------------------------------------------------

echo -e "${PINK}[+] Installing base packages...${RESET}"

sudo pacman -Syu --needed \
    git base-devel \
    zsh zsh-completions starship \
    kitty tmux fastfetch btop \
    tree less eza bat fzf \
    neovim obsidian \
    ripgrep fd unzip zip p7zip curl wget \
    papirus-icon-theme breeze-icons

# ----------------------------------------------------------
# Directories
# ----------------------------------------------------------

echo -e "${PINK}[+] Creating workspace directories...${RESET}"

mkdir -p "$HOME/Scripts"
mkdir -p "$HOME/Projects"
mkdir -p "$HOME/Labs"/{HTB,THM,PortSwigger,OSCP}
mkdir -p "$HOME/Tools"/{recon,web,ad,privesc,postexploitation}
mkdir -p "$HOME/Wordlists"/{web,passwords,usernames}
mkdir -p "$HOME/Payloads"/{web,shells,windows,linux}
mkdir -p "$HOME/Loot"/{creds,hashes,configs,screenshots,pcaps}
mkdir -p "$HOME/Reports"/{templates,finished,drafts}
mkdir -p "$HOME/Notes/RedTeamVault/10_Templates"

# ----------------------------------------------------------
# Dotfiles
# ----------------------------------------------------------

echo -e "${PINK}[+] Installing dotfiles...${RESET}"

mkdir -p "$HOME/.config/starship"
mkdir -p "$HOME/.config/kitty"

cp "$PROJECT_DIR/dotfiles/zshrc" "$HOME/.zshrc"
cp "$PROJECT_DIR/dotfiles/starship.toml" "$HOME/.config/starship/starship.toml"
cp "$PROJECT_DIR/dotfiles/kitty.conf" "$HOME/.config/kitty/kitty.conf"
cp "$PROJECT_DIR/dotfiles/tmux.conf" "$HOME/.tmux.conf"

# ----------------------------------------------------------
# Scripts
# ----------------------------------------------------------

echo -e "${PINK}[+] Installing scripts...${RESET}"

cp "$PROJECT_DIR/scripts/alicebanner" "$HOME/Scripts/alicebanner"
cp "$PROJECT_DIR/scripts/newtarget" "$HOME/Scripts/newtarget"

chmod +x "$HOME/Scripts/alicebanner"
chmod +x "$HOME/Scripts/newtarget"

# ----------------------------------------------------------
# Obsidian templates
# ----------------------------------------------------------

echo -e "${PINK}[+] Installing Obsidian templates...${RESET}"

cp "$PROJECT_DIR/obsidian-templates/"*.md "$HOME/Notes/RedTeamVault/10_Templates/"

# ----------------------------------------------------------
# Shell
# ----------------------------------------------------------

echo -e "${PINK}[+] Checking default shell...${RESET}"

ZSH_PATH="$(command -v zsh)"

if [ "$SHELL" != "$ZSH_PATH" ]; then
    echo -e "${YELLOW}[*] Current shell is:${RESET} $SHELL"
    echo -e "${YELLOW}[*] Recommended shell is:${RESET} $ZSH_PATH"
    echo
    read -r -p "Set zsh as default shell? [y/N] " CHANGE_SHELL

    if [[ "$CHANGE_SHELL" =~ ^[Yy]$ ]]; then
        chsh -s "$ZSH_PATH"
        echo -e "${GREEN}[+] Default shell changed to zsh. Log out and log back in.${RESET}"
    else
        echo -e "${YELLOW}[*] Skipping shell change.${RESET}"
    fi
else
    echo -e "${GREEN}[+] zsh is already the default shell.${RESET}"
fi

# ----------------------------------------------------------
# Final message
# ----------------------------------------------------------

echo
echo -e "${GREEN}[+] Alice Red Team Workstation base installation completed.${RESET}"
echo
echo -e "${CYAN}Next steps:${RESET}"
echo "1. Open Kitty."
echo "2. Run: source ~/.zshrc"
echo "3. Run: banner"
echo "4. Run: ff"
echo "5. Run: newtarget sample-target"
echo "6. Open Obsidian and select/create vault: ~/Notes/RedTeamVault"
echo "7. Enable Templates plugin and set template folder to: 10_Templates"
echo
echo -e "${MAGENTA:-\033[1;35m}Authorized Operations · Adversary Emulation${RESET}"
