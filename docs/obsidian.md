# Obsidian Workflow

Obsidian is used as the structured knowledge and documentation layer of Alice Red Team Framework.

The terminal is used for execution.  
tmux is used for operational organization.  
Obsidian is used for thinking, documenting, linking and reporting.

---

## Purpose

Obsidian is not an offensive security tool.

It is used to document:

- targets
- methodology
- enumeration notes
- hypotheses
- attack paths
- credentials
- evidence
- privilege escalation vectors
- exfiltration simulation notes
- findings
- reports
- reusable knowledge

The goal is to avoid chaotic notes and build a repeatable documentation workflow.

---

## Recommended Vault

Recommended vault name:

`RedTeamVault`

Recommended location:

`~/Notes/RedTeamVault`

Recommended template folder:

`10_Templates`

---

## Recommended Vault Structure

The recommended structure is:

- `00_Dashboard/`
- `01_Methodology/`
- `02_Targets/`
- `03_Enumeration/`
- `04_Web/`
- `05_ActiveDirectory/`
- `06_PrivEsc/`
- `07_Exfil/`
- `08_Loot/`
- `09_Reports/`
- `10_Templates/`
- `11_KnowledgeBase/`

---

## Folder Purpose

### 00_Dashboard

Main navigation and study roadmap.

This folder may contain personal material and should not be committed to the public repository.

### 01_Methodology

General methodology notes:

- ethical hacking workflow
- pentest phases
- Red Team phases
- reporting process
- rules of engagement
- evidence handling

### 02_Targets

Target-specific notes.

Examples:

- Hack The Box machines
- TryHackMe rooms
- OSCP labs
- internal lab environments
- local AD labs
- OT/ICS labs

### 03_Enumeration

Service enumeration notes and checklists.

Examples:

- HTTP
- SMB
- FTP
- SSH
- DNS
- LDAP
- SNMP
- NFS
- RPC
- databases

### 04_Web

Web application security notes.

Examples:

- Burp Suite
- SQL Injection
- XSS
- SSRF
- Authentication flaws
- Access control
- File upload
- JWT
- OAuth
- APIs

### 05_ActiveDirectory

Active Directory and internal network notes.

Examples:

- Kerberos
- LDAP
- BloodHound
- Kerberoasting
- AS-REP Roasting
- Password spraying
- Lateral movement
- AD privilege escalation

### 06_PrivEsc

Privilege escalation notes.

Examples:

- Linux privilege escalation
- Windows privilege escalation
- SUID
- sudo
- cron
- services
- tokens
- registry
- scheduled tasks

### 07_Exfil

Exfiltration simulation and impact validation notes.

This should only be used for approved operations and controlled simulations.

Document:

- ROE approval
- data type
- volume
- channel
- detection results
- evidence
- controls tested

### 08_Loot

Loot classification notes.

This folder should never contain real sensitive material in a public repository.

Use it to document:

- what was found
- where it came from
- whether it was validated
- whether it should be reported

### 09_Reports

Draft reports, finding summaries and report notes.

### 10_Templates

Reusable Obsidian templates.

This is the only Obsidian folder intended to be copied into the public project.

### 11_KnowledgeBase

General knowledge notes.

Examples:

- command explanations
- tool usage
- protocol notes
- payload notes
- methodology improvements
- troubleshooting

---

## Included Templates

Alice Red Team Framework includes the following templates:

- `machine-template.md`
- `finding-template.md`
- `service-enumeration-template.md`
- `credentials-template.md`
- `exfil-simulation-template.md`
- `report-template.md`
- `command-notes-template.md`

---

## Enabling Templates Plugin

Inside Obsidian:

1. Open Settings.
2. Go to Core Plugins.
3. Enable Templates.
4. Go to Templates settings.
5. Set template folder location to:

`10_Templates`

---

## Using Templates

To use a template:

1. Create a new note.
2. Open the command palette.
3. Search for:

`Insert template`

4. Select the desired template.

Recommended usage:

| Situation | Template |
|---|---|
| New machine / target | Machine Template |
| New vulnerability | Finding Template |
| New service | Service Enumeration Template |
| Credentials found | Credentials Template |
| Exfil validation | Exfil Simulation Template |
| Final report | Report Template |
| Tool or command note | Command Notes Template |

---

## Integration With newtarget

The `newtarget` script creates an operational directory and tmux session for a target.

Example:

`newtarget htb-machine-lame`

This creates:

- terminal workspace
- target folders
- tmux windows
- notes directory
- loot directory
- evidence directories

Obsidian should then be used to create a structured note under:

`02_Targets/`

Recommended note name:

`htb-machine-lame`

Use the Machine Template for the note.

---

## Recommended Target Note Workflow

For each new target:

1. Run `newtarget <target-name>`.
2. Create a note in `02_Targets/`.
3. Insert Machine Template.
4. Fill in scope and target information.
5. Document recon and enumeration.
6. Link findings to Finding Template notes.
7. Store evidence paths.
8. Track loot and credentials.
9. Write report notes.
10. Add lessons learned.

---

## Evidence Handling

Evidence should be referenced clearly.

Recommended evidence types:

- screenshots
- command output
- scan files
- PCAPs
- logs
- proof files
- SIEM alerts
- EDR events
- proxy/firewall logs

Evidence should be stored in the target workspace and referenced from Obsidian.

Do not paste sensitive secrets into public notes.

---

## What Not To Commit

Never commit:

- personal dashboards
- private notes
- target notes
- loot
- credentials
- hashes
- screenshots
- evidence
- logs
- PCAPs
- VPN files
- SSH keys
- API tokens
- real client information

Only reusable templates should be committed to the public repository.

---

## Public Repository Policy

The public repository should include:

- reusable templates
- documentation
- dotfiles
- scripts
- installation guides

The public repository should not include:

- personal vault content
- operational data
- real target information
- sensitive material

---

## Documentation Discipline

Good offensive security documentation should answer:

- What was tested?
- What was found?
- Why does it matter?
- How was it validated?
- What evidence supports it?
- What is the impact?
- How can it be remediated?
- What should be improved next time?

Obsidian exists to make those answers easier to produce.
