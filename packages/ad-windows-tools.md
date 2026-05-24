# Alice Red Team Workstation - AD / Windows Internal Tools

This document maps tools used for Active Directory, Windows internal assessments, SMB/LDAP/Kerberos enumeration, credential validation, attack path analysis and internal Red Team workflows.

This module supports:

- Active Directory enumeration
- Windows internal assessment
- SMB enumeration
- LDAP enumeration
- Kerberos testing
- BloodHound analysis
- AD CS assessment
- credential validation
- internal attack path mapping
- controlled lateral movement validation

This module should be installed separately from the base workstation.

---

## Installation Categories

| Category | Meaning |
|---|---|
| official | Available from Arch official repositories |
| AUR | Available through yay / AUR |
| pipx | Python CLI tool installed through pipx |
| Go | Go-based tool installed with go install |
| manual | Manual download or GitHub installation |
| Windows-only | Intended to run inside Windows labs or targets |
| sensitive | Requires additional ROE and handling care |

---

## 1. Core Linux-Side AD Tools

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| impacket | Windows/AD protocol toolkit | official / pipx | core |
| netexec | SMB/LDAP/WinRM validation and enumeration | pipx / AUR | core |
| crackmapexec | legacy internal assessment toolkit | AUR | optional |
| evil-winrm | WinRM shell | AUR / gem | core |
| smbclient | SMB interaction | official | core |
| smbmap | SMB share enumeration | AUR / pipx | core |
| enum4linux-ng | SMB enumeration | AUR | core |
| rpcclient | RPC enumeration | samba package | core |
| ldapdomaindump | LDAP domain dump | pipx | core |
| bloodhound-python | BloodHound ingestor | pipx | core |
| certipy | AD CS enumeration and validation | pipx | core |
| kerbrute | Kerberos username/password validation | manual / Go | core |

---

## 2. BloodHound Stack

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| BloodHound | AD graph analysis | AUR / manual | core |
| Neo4j | BloodHound database backend | official / AUR | core |
| SharpHound | Windows data collector | manual / Windows-only | core |
| bloodhound-python | Linux-side collector | pipx | core |

Notes:

- BloodHound is used for attack path analysis.
- SharpHound should be handled carefully and only used under approved ROE.
- BloodHound data can contain sensitive organizational structure and must not be committed to Git.

---

## 3. Kerberos / LDAP / AD CS

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| impacket-GetNPUsers | AS-REP roasting validation | impacket | core |
| impacket-GetUserSPNs | Kerberoasting validation | impacket | core |
| impacket-secretsdump | credential extraction in approved labs | impacket | sensitive |
| certipy | AD CS enumeration and abuse validation | pipx | core |
| kerbrute | Kerberos user validation | manual / Go | core |
| ldapsearch | LDAP queries | official | core |
| ldapdomaindump | LDAP dump | pipx | core |
| adidnsdump | ADIDNS enumeration | pipx | optional |

---

## 4. SMB / Shares / File Discovery

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| smbclient | SMB interaction | official | core |
| smbmap | SMB share mapping | AUR / pipx | core |
| enum4linux-ng | SMB enumeration | AUR | core |
| netexec | SMB validation and enumeration | pipx / AUR | core |
| Snaffler | file share discovery | Windows-only / manual | core |
| manspider | SMB share spidering | pipx / GitHub | optional |

---

## 5. Responder / Poisoning / Relay Lab Tools

These tools are powerful and should only be used in approved labs or explicitly authorized assessments.

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| responder | LLMNR/NBNS poisoning lab tool | AUR / GitHub | advanced |
| mitm6 | IPv6-based AD lab attacks | pipx / GitHub | advanced |
| ntlmrelayx | NTLM relay validation | impacket | advanced |
| pretender | LLMNR/NBNS/mDNS spoofing | Go / manual | optional |

Notes:

- These tools can be noisy.
- They can disrupt networks if misused.
- Use only under clear ROE.

---

## 6. Windows-Side Tools

These are normally stored outside the Linux package manager and used in controlled Windows labs or authorized internal assessments.

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| SharpHound | BloodHound collection | Windows-only / manual | core |
| Rubeus | Kerberos research and validation | Windows-only / manual | advanced |
| PowerView | AD enumeration | Windows-only / manual | advanced |
| SharpView | AD enumeration | Windows-only / manual | advanced |
| Seatbelt | host situational awareness | Windows-only / manual | advanced |
| SharpUp | Windows privilege escalation checks | Windows-only / manual | advanced |
| PowerUp | Windows privilege escalation checks | Windows-only / manual | advanced |
| WinPEAS | Windows privilege escalation enumeration | Windows-only / manual | core |
| LaZagne | credential recovery validation | Windows-only / manual | sensitive |
| Snaffler | file share discovery | Windows-only / manual | core |
| Mimikatz | credential security research | Windows-only / manual | sensitive |

---

## 7. Operational Notes

AD / Windows tooling can generate sensitive data:

- domain users
- group memberships
- attack paths
- hashes
- tickets
- credentials
- share contents
- hostnames
- internal IPs

Never commit this data to Git.

Store operational output under target-specific folders such as:

- `loot/`
- `evidence/`
- `screenshots/`
- `reports/`

Reference evidence in Obsidian, but do not publish private operational material.

---

## 8. Recommended AD Workflow

Recommended order:

1. Confirm scope and ROE.
2. Identify domain and reachable services.
3. Enumerate SMB, LDAP, Kerberos and DNS.
4. Validate credentials only when approved.
5. Collect BloodHound data when authorized.
6. Analyze attack paths.
7. Validate privilege escalation or lateral movement paths carefully.
8. Document evidence.
9. Report impact and remediation.

---

## 9. Future Installer

A future module should be created as:

`scripts/install-ad-windows`

The installer should separate:

- official packages
- AUR packages
- pipx tools
- Go tools
- Windows-only manual tools
- sensitive tools

It should not install sensitive or Windows-only tooling by default.
