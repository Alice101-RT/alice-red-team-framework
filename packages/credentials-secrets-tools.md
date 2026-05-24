# Alice Red Team Workstation - Credentials / Secrets Tools

This document maps tools used for credential discovery, hash handling, password auditing, secret detection and credential validation during authorized Red Team operations or security assessments.

This module supports:

- password hash identification
- password cracking in approved labs
- credential validation
- secrets discovery
- token discovery
- Git repository secret review
- configuration file review
- wordlist generation
- credential exposure analysis

This module should be installed separately from the base workstation.

---

## Installation Categories

| Category | Meaning |
|---|---|
| official | Available from Arch official repositories |
| AUR | Available through yay / AUR |
| pipx | Python CLI tool installed through pipx |
| Go | Go-based tool installed with go install |
| GitHub / manual | Manual clone, build or binary download |
| sensitive | Requires additional ROE and careful handling |

---

## 1. Hash Identification

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| hashid | Identify hash types | official / AUR | core |
| name-that-hash | Identify hash types | pipx | core |
| hashcat --example-hashes | Hash reference | official | core |
| john --list=formats | Hash format reference | official | core |

---

## 2. Password / Hash Cracking

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| hashcat | GPU/CPU hash cracking | official | core |
| john | Password/hash cracking | official | core |
| hashcat-utils | Hashcat helper utilities | official / AUR | optional |
| princeprocessor | Password candidate generation | GitHub / manual | optional |
| rulesets | Hashcat/John rules | manual | optional |

---

## 3. Wordlist Generation

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| cewl | Custom wordlist generation from websites | AUR / official depending repo state | optional |
| crunch | Wordlist generation | AUR / official depending repo state | optional |
| hashcat rules | Rule-based mutations | manual | core |
| seclists | General wordlists | AUR / manual | core |
| custom wordlists | Target-specific wordlists | manual | core |

---

## 4. Secrets Discovery

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| trufflehog | Secret scanning in Git/repos/files | official / Go | core |
| gitleaks | Secret scanning in Git/repos/files | official / Go | core |
| detect-secrets | Secret scanning baseline workflow | pipx | optional |
| git-secrets | Prevent committing secrets | AUR / manual | optional |

---

## 5. Token / Key Material

Common material to identify and document:

- API keys
- JWT tokens
- OAuth tokens
- session cookies
- SSH private keys
- cloud credentials
- database credentials
- Kerberos tickets
- configuration secrets
- CI/CD secrets
- `.env` files

These should never be committed to Git.

---

## 6. Credential Validation

Credential validation must always respect ROE.

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| netexec | Credential validation across SMB/LDAP/WinRM/SSH/etc. | pipx / AUR | core |
| evil-winrm | WinRM access validation | AUR / gem | core |
| smbclient | SMB credential validation | official | core |
| ssh | SSH credential validation | official | core |
| curl | Web/API token validation | official | core |
| Burp Suite | Session/cookie/API validation | AUR / manual | core |

---

## 7. Operational Notes

Credential material is sensitive.

Always document:

- source
- timestamp
- validation status
- affected service
- privilege level
- reuse potential
- reporting relevance
- storage location
- cleanup requirements

Never commit:

- plaintext passwords
- hashes
- tokens
- SSH keys
- cookies
- Kerberos tickets
- API keys
- database credentials
- cloud credentials

---

## 8. Recommended Workflow

Recommended order:

1. Confirm ROE and credential testing limits.
2. Identify credential material.
3. Classify the type of credential.
4. Store securely in target-specific loot directory.
5. Document metadata in Obsidian.
6. Validate only where authorized.
7. Check reuse potential.
8. Report impact.
9. Recommend remediation.
10. Clean up sensitive material when appropriate.

---

## 9. Obsidian Integration

Use:

- Credentials Template
- Finding Template
- Machine Template

Document:

- where the credential was found
- whether it was validated
- what access it enabled
- whether it indicates broader risk
- recommended remediation

---

## 10. Future Installer

A future module should be created as:

`scripts/install-credentials`

The installer should separate:

- official packages
- AUR packages
- pipx tools
- Go tools
- manual rules/wordlists

It should not install or include real credential material.
