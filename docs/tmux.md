# tmux Workflow

tmux is the terminal multiplexer used by Alice Red Team Workstation to organize offensive security work inside structured terminal sessions.

It allows multiple windows and panes to exist inside a single terminal, making it easier to manage reconnaissance, enumeration, shells, privilege escalation, notes and auxiliary services.

---

## Why tmux Matters

During a pentest, lab or Red Team operation, many terminal tasks run in parallel:

- port scans
- service enumeration
- web fuzzing
- listeners
- reverse shells
- file transfers
- privilege escalation checks
- tunnels
- HTTP servers
- loot handling
- note taking

Without structure, the terminal becomes chaotic.

tmux provides a repeatable workspace for each target.

---

## Core Concept

A tmux session represents one workspace.

In Alice Red Team Workstation, one target should usually have one tmux session.

Example:

`newtarget htb-machine-lame`

This creates a tmux session named:

`htb-machine-lame`

---

## Session Layout

The default `newtarget` layout creates these windows:

| Window | Name | Purpose |
|---:|---|---|
| 1 | recon | initial discovery and scanning |
| 2 | enum | service enumeration |
| 3 | attack | exploit validation and payload work |
| 4 | shell | listeners and shell handling |
| 5 | privesc | privilege escalation |
| 6 | exfil | approved exfiltration simulation |
| 7 | loot | credentials, hashes and interesting files |
| 8 | notes | operational notes |
| 9 | services | HTTP servers, tunnels and auxiliary services |

---

## Prefix Key

The default tmux prefix is usually `CTRL + B`.

Alice Red Team Workstation changes it to:

`CTRL + A`

This is faster and more comfortable for frequent use.

When using tmux shortcuts:

1. Press `CTRL + A`
2. Release both keys
3. Press the action key

Example:

`CTRL + A`, then `c`

creates a new tmux window.

---

## Essential Shortcuts

| Shortcut | Action |
|---|---|
| `CTRL + A`, then `c` | create new window |
| `CTRL + A`, then `,` | rename current window |
| `CTRL + A`, then `n` | move to next window |
| `CTRL + A`, then `p` | move to previous window |
| `CTRL + A`, then `"` | split pane horizontally |
| `CTRL + A`, then `%` | split pane vertically |
| `CTRL + A`, then `h` | move to left pane |
| `CTRL + A`, then `j` | move to lower pane |
| `CTRL + A`, then `k` | move to upper pane |
| `CTRL + A`, then `l` | move to right pane |
| `CTRL + A`, then `x` | close current pane |
| `CTRL + A`, then `d` | detach from session |

---

## Shell Aliases

The included Zsh configuration provides aliases for common tmux actions.

| Alias | Meaning |
|---|---|
| `tls` | list tmux sessions |
| `ta <session>` | attach to a tmux session |
| `tk <session>` | kill a tmux session |
| `tn <session>` | create a new tmux session |

Examples:

`tls`

`ta htb-machine-lame`

`tk htb-machine-lame`

`tn research-session`

---

## Detaching vs Closing

Detaching does not close the session.

Detach with:

`CTRL + A`, then `d`

Attach again with:

`ta <session>`

Closing a session kills it completely:

`tk <session>`

Use detach when you want to return later.

Use kill only when the target/lab is finished.

---

## Recommended Usage Per Phase

### recon

Use for:

- nmap
- rustscan
- ping sweeps
- initial service detection
- scan output

### enum

Use for:

- SMB enumeration
- HTTP enumeration
- FTP checks
- DNS checks
- LDAP/AD enumeration
- service-specific notes

### attack

Use for:

- exploit validation
- payload preparation
- PoC testing
- controlled exploitation

### shell

Use for:

- listeners
- reverse shells
- bind shells
- TTY upgrades
- shell stabilization

### privesc

Use for:

- Linux privilege escalation
- Windows privilege escalation
- local enumeration
- credentials
- misconfigurations

### exfil

Use only for approved simulation and impact validation.

Document:

- ROE approval
- data type
- channel
- volume
- detection
- evidence

### loot

Use for:

- credentials
- hashes
- configs
- screenshots
- interesting files

### notes

Use for quick notes.

Structured notes should be moved into Obsidian.

### services

Use for auxiliary services:

- Python HTTP server
- tunnels
- chisel
- ligolo
- responder
- temporary listeners

---

## Example Target Workflow

Create a new target:

`newtarget htb-machine-lame`

Run initial scan in `recon`.

Move to `enum` for service-specific enumeration.

Use `attack` for controlled exploit testing.

Use `shell` for listener and shell stabilization.

Use `privesc` after foothold.

Use `loot` for collected material.

Use Obsidian for structured documentation.

Detach when done:

`CTRL + A`, then `d`

Return later:

`ta htb-machine-lame`

---

## Good Practices

- Keep shell windows clean.
- Do not run scans inside the shell window.
- Do not mix loot handling with active exploitation.
- Keep one target per session.
- Use lowercase session names with hyphens.
- Avoid vague names like `test`, `demo` or `machine1`.
- Store evidence paths in Obsidian.
- Kill sessions only when work is complete.

---

## Troubleshooting

List sessions:

`tls`

Attach to a session:

`ta <session>`

Kill a stuck session:

`tk <session>`

If a pane becomes messy, clear it:

`clear`

If a pane is no longer needed:

`CTRL + A`, then `x`

If tmux colors look wrong, verify that Kitty and tmux configs are correctly installed.
