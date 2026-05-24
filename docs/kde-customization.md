# KDE Customization

Alice Red Team Workstation uses KDE Plasma as the default desktop environment for the graphical workstation experience.

The goal is to provide a clean, dark, cyberpunk/anime-inspired interface that remains usable for long technical sessions.

---

## Design Goal

The visual setup aims for:

- dark interface
- magenta / cyan accents
- anime/cyberpunk wallpaper
- floating bottom panel
- readable terminal transparency
- minimal visual noise
- fast access to offensive workflow tools

This is not meant to be visual noise or unnecessary rice.

The interface should support focus, readability and workflow.

---

## Recommended Session

When running inside VirtualBox, use:

`Plasma (X11)`

This is recommended because KDE Plasma on Wayland may cause graphical issues with VirtualBox, Kitty and dynamic resize.

Recommended setup:

- Display server: X11
- VirtualBox graphics controller: VMSVGA
- Video memory: 128 MB
- 3D acceleration: disabled if graphical glitches occur
- Auto-resize guest display: enabled

---

## Global Theme

Recommended base theme:

- Breeze Dark / Brisa oscuro

The current setup uses a dark base with Sweet-style colors.

---

## Color Scheme

Recommended color direction:

- magenta
- pink
- cyan
- dark violet
- black / near-black backgrounds

Suggested KDE color scheme:

- Sweet KDE
- Dracula-like dark theme
- Tokyo Night style
- any dark scheme with magenta/cyan accents

Avoid bright themes for long offensive security work sessions.

---

## Icons

Recommended icon theme:

- Candy Icons

Alternative:

- Papirus Dark

Candy Icons match the cyberpunk/anime aesthetic better, while Papirus Dark is more conservative and professional.

---

## Cursor

Recommended cursor:

- Oxygen Yellow
- Bibata Modern Ice
- Catppuccin cursor themes

The current setup uses Oxygen Yellow because it fits the neon/cyberpunk palette and is available by default.

---

## Wallpaper

Recommended wallpaper style:

- anime/cyberpunk
- dark background
- magenta/cyan highlights
- low visual noise around the terminal area
- 1920x1080 or higher

Recommended storage path:

`~/Pictures/Wallpapers`

Example naming:

- `zero-two-cyberpunk.jpg`
- `alice-cyberpunk-wallpaper.jpg`
- `dark-anime-redteam.jpg`

Do not store personal or copyrighted wallpapers directly in the public repository unless redistribution is allowed.

Instead, document the recommended style and let users provide their own wallpaper.

---

## Panel Setup

Recommended panel style:

- bottom panel
- floating panel enabled
- adaptive or transparent opacity
- centered alignment
- content-width panel instead of full-width
- height around 44-46 px

Recommended pinned applications:

- Application launcher
- System Settings
- Discover
- Dolphin
- Firefox
- Kitty
- Obsidian
- System tray
- Clock

The panel should behave like a lightweight dock.

---

## Fonts

Recommended fonts:

- General UI: Noto Sans
- Terminal / monospace: JetBrainsMono Nerd Font

Recommended terminal font:

`JetBrainsMono Nerd Font`

Nerd Fonts are important because they provide icons used by prompts, terminal themes and tooling.

---

## Kitty Visual Integration

Kitty is the primary terminal.

Recommended features:

- X11 display backend
- JetBrainsMono Nerd Font
- dark background
- light transparency
- magenta cursor
- cyberpunk palette
- readable foreground color

The Kitty configuration is stored in:

`dotfiles/kitty.conf`

Installed location:

`~/.config/kitty/kitty.conf`

---

## Starship Prompt

The Starship prompt is configured to match the KDE / Kitty color palette.

Main colors:

- neon pink
- dark violet
- cyan
- magenta

The Starship configuration is stored in:

`dotfiles/starship.toml`

Installed location:

`~/.config/starship/starship.toml`

---

## Banner

The terminal banner can be displayed with:

`banner`

or:

`alicebanner`

The banner identifies the workstation as:

`ALICE RED TEAM WORKSTATION`

It is intended for screenshots, presentation and workspace identity.

It should not be forced automatically in every terminal session, because it can create noise inside tmux panes.

---

## Recommended Visual Workflow

A good visual setup should make these actions comfortable:

- open Kitty
- run `banner`
- run `ff`
- create a target with `newtarget <target-name>`
- switch tmux windows cleanly
- document work in Obsidian
- keep the desktop visually clean

---

## Notes For Public Repository

Do not include personal wallpapers unless they are licensed for redistribution.

Recommended approach:

- include theme documentation
- include dotfiles
- include screenshots later if desired
- let users supply their own wallpaper

Possible future directory:

`assets/screenshots/`

Do not include:

- private screenshots
- real target data
- personal vault content
- sensitive operational material
