# Workflow

Alice Red Team Framework is built around a structured offensive workflow.

The goal is to avoid chaotic terminal usage and replace it with a repeatable operational process.

---

## Core Principle

Workflow before tooling.

A good operator should know:

- where reconnaissance data goes
- where enumeration notes are stored
- where shells are handled
- where loot is saved
- where evidence is collected
- where findings are documented
- how to recover a session
- how to reproduce an attack path

---

## Target Workspace

A new target workspace is created with:

`newtarget <target-name>`

Example:

`newtarget htb-machine-lame`

This creates:

- a tmux session named after the target
- a target directory under `~/Labs/<target-name>`
- operational subdirectories for each phase

---

## Directory Structure Per Target

Each target contains:

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

## tmux Session Layout

Each `newtarget` session creates these windows:

| Window | Purpose |
|---:|---|
| 1 recon | initial discovery and scanning |
| 2 enum | deep service enumeration |
| 3 attack | exploit validation and payload work |
| 4 shell | listeners, shells and TTY stabilization |
| 5 privesc | local privilege escalation |
| 6 exfil | approved exfiltration simulation and impact validation |
| 7 loot | credentials, hashes, configs and interesting files |
| 8 notes | operational notes and findings |
| 9 services | HTTP servers, tunnels and auxiliary services |

---

## Recommended Flow

### 1. Recon

Use this phase for:

- host discovery
- port scanning
- service detection
- initial screenshots
- scan output storage

Typical outputs go into:

`recon/` and `scans/`

---

### 2. Enumeration

Use this phase for service-specific enumeration:

- HTTP / HTTPS
- SMB
- FTP
- SSH
- DNS
- LDAP / Active Directory
- SNMP
- NFS
- RPC
- databases

Enumeration notes should be documented in Obsidian using the Service Enumeration Template.

---

### 3. Attack

Use this phase for:

- exploit validation
- proof-of-concept testing
- payload preparation
- controlled exploitation
- hypothesis testing

Do not throw random exploits blindly.

Every action should be linked to evidence collected during enumeration.

---

### 4. Shell

Use this phase for:

- netcat listeners
- reverse shells
- bind shells
- shell stabilization
- TTY upgrades
- file transfer helpers

Keep shell windows clean.

Do not mix shell handling with scanning.

---

### 5. PrivEsc

Use this phase for:

- local enumeration
- Linux privilege escalation
- Windows privilege escalation
- credential discovery
- misconfiguration analysis
- token/service/path checks

Document every confirmed escalation vector.

---

### 6. Exfil

Use this phase only for authorized exfiltration simulation and impact validation.

Use synthetic, marker or approved sample data.

Document:

- ROE approval
- data type
- volume
- channel
- detection results
- evidence
- remediation

Never use real sensitive data unless explicitly approved and legally authorized.

---

### 7. Loot

Use this phase for storing and classifying:

- credentials
- hashes
- tokens
- configuration files
- interesting documents
- screenshots
- proof files

Loot must be handled carefully and never committed to Git.

---

### 8. Notes

Use this phase for:

- quick notes
- attack path tracking
- hypotheses
- findings
- links to Obsidian notes

Final structured notes should live in Obsidian.

---

### 9. Services

Use this phase for auxiliary services:

- Python HTTP servers
- tunnels
- reverse proxies
- responder
- chisel
- ligolo
- temporary listeners

---

## tmux Shortcuts

| Command | Description |
|---|---|
| `tls` | list tmux sessions |
| `ta <session>` | attach to a tmux session |
| `tk <session>` | kill a tmux session |
| `tn <session>` | create a new tmux session |

Inside tmux:

| Shortcut | Action |
|---|---|
| `CTRL + A`, then `c` | create new window |
| `CTRL + A`, then `n` | next window |
| `CTRL + A`, then `p` | previous window |
| `CTRL + A`, then `"` | horizontal split |
| `CTRL + A`, then `%` | vertical split |
| `CTRL + A`, then `d` | detach from session |
| `CTRL + A`, then `x` | close pane |

---

## Obsidian Usage

Obsidian is used for structured documentation.

Recommended templates:

- Machine Template
- Finding Template
- Service Enumeration Template
- Credentials Template
- Exfil Simulation Template
- Report Template
- Command Notes Template

Use Obsidian for anything that should survive beyond the terminal session.

---

## Evidence Handling

Evidence should include:

- command used
- command output
- screenshot
- timestamp
- affected asset
- context
- impact
- reproduction steps

Evidence should be stored under the target workspace and referenced in Obsidian.

---

## Closing a Target

Before closing a target, verify:

- notes are complete
- findings are documented
- evidence is stored
- loot is classified
- screenshots are named clearly
- tmux session can be closed
- no sensitive material is committed to Git

To close a session:

`tk <target-name>`

---

## Naming Convention

Use lowercase names with hyphens.

Good examples:

- `htb-machine-lame`
- `thm-room-attacktive-directory`
- `oscp-lab-internal`
- `local-ad-lab01`
- `ot-modbus-basics`

Avoid:

- spaces
- uppercase
- accents
- vague names like `test`, `demo`, `machine1`
