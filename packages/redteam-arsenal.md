# Alice Red Team Workstation - Red Team Arsenal

This document maps tools by operational phase and installation method.

Alice Red Team Workstation does not blindly install every offensive tool.  
The goal is to keep the workstation modular, understandable and operationally disciplined.

---

## Installation Categories

Tools are classified as:

| Category | Meaning |
|---|---|
| Official repo | Available from Arch official repositories |
| AUR | Available from Arch User Repository |
| pipx | Python CLI tool best installed with pipx |
| Go | Go-based tool installed with `go install` |
| GitHub / Manual | Manual clone, build or binary download |
| Windows-only | Tool intended to run on Windows targets/labs |
| Optional / Advanced | Should not be installed by default |
| Sensitive | Requires extra care, ROE and authorization |

---

## 1. Recon / OSINT / Attack Surface

Purpose:

- discover assets
- identify exposed services
- map domains and subdomains
- collect public information
- build attack surface

### Tools

| Tool | Purpose | Install Type | Priority |
|---|---|---|---|
| amass | attack surface and DNS enumeration | official/AUR | core |
| subfinder | subdomain discovery | Go | core |
| assetfinder | subdomain discovery | Go | optional |
| httpx | HTTP probing | Go | core |
| dnsx | DNS toolkit | Go | core |
| naabu | port scanning | Go | core |
| nuclei | vulnerability templates/scanning | Go | core |
| katana | crawling/spidering | Go | core |
| gau | URL collection | Go | optional |
| waybackurls | historical URL collection | Go | optional |
| theHarvester | OSINT collection | official/AUR | core |
| sherlock | username OSINT | pipx/AUR | optional |
| holehe | email OSINT | pipx | optional |
| exiftool | metadata extraction | official | core |
| metagoofil | metadata extraction | GitHub/manual | optional |
| spiderfoot | OSINT automation | GitHub/manual | optional |
| maltego | visual OSINT | manual/commercial | optional |

---

## 2. Network Discovery / Scanning

Purpose:

- identify hosts
- identify ports
- fingerprint services
- collect scan evidence

### Tools

| Tool | Purpose | Install Type | Priority |
|---|---|---|---|
| nmap | port scanning and service detection | official | core |
| masscan | high-speed scanning | official | optional |
| rustscan | fast port discovery | AUR | core |
| naabu | fast port scanning | Go | core |
| tcpdump | packet capture | official | core |
| wireshark-qt | packet analysis | official | core |
| tshark | CLI packet analysis | official | core |
| traceroute | route discovery | official | core |
| whois | WHOIS lookup | official | core |
| bind / dnsutils | DNS tools | official | core |

---

## 3. Web / API Testing

Purpose:

- enumerate web applications
- discover content and parameters
- test common vulnerabilities
- support Burp workflow

### Tools

| Tool | Purpose | Install Type | Priority |
|---|---|---|---|
| burpsuite | web proxy/testing | official/AUR | core |
| ffuf | web fuzzing | official | core |
| feroxbuster | content discovery | official/AUR | core |
| gobuster | content discovery | official | core |
| dirsearch | content discovery | AUR/GitHub | core |
| whatweb | technology fingerprinting | official | core |
| nikto | web server checks | official | optional |
| sqlmap | SQL injection testing | official | core |
| arjun | parameter discovery | pipx | optional |
| dalfox | XSS testing | Go | optional |
| kiterunner | API route discovery | GitHub/manual | optional |
| jwt-tool | JWT testing | GitHub/manual | optional |
| wpscan | WordPress security testing | AUR/gem | optional |
| postman | API testing | manual | optional |
| insomnia | API testing | official/AUR | optional |

---

## 4. Active Directory / Windows Tradecraft

Purpose:

- enumerate Windows environments
- identify AD attack paths
- validate credential exposure
- support internal assessments

### Linux-side Tools

| Tool | Purpose | Install Type | Priority |
|---|---|---|---|
| impacket | Windows/AD protocol toolkit | official/pipx | core |
| netexec | network service enumeration and validation | pipx/AUR | core |
| crackmapexec | legacy AD/SMB toolkit | AUR | optional |
| evil-winrm | WinRM shell | AUR/gem | core |
| smbclient | SMB interaction | official | core |
| smbmap | SMB enumeration | AUR/pipx | core |
| enum4linux-ng | SMB enumeration | AUR | core |
| responder | LLMNR/NBNS poisoning lab tool | AUR/GitHub | advanced |
| mitm6 | IPv6 AD attack lab tool | pipx/GitHub | advanced |
| bloodhound | AD graph analysis | AUR/manual | core |
| bloodhound-python | BloodHound ingestor | pipx | core |
| neo4j | BloodHound database backend | official/AUR | core |
| certipy | AD CS enumeration and abuse validation | pipx | core |
| kerbrute | Kerberos username/password validation | GitHub/manual | core |
| ldapdomaindump | LDAP domain dump | pipx | core |
| adidnsdump | ADIDNS enumeration | pipx | optional |
| rpcclient | RPC enumeration | official via samba | core |

### Windows-side Tools

These are normally used in controlled labs or authorized internal assessments.

| Tool | Purpose | Install Type | Priority |
|---|---|---|---|
| SharpHound | BloodHound collection | Windows-only/manual | core |
| Rubeus | Kerberos research/tooling | Windows-only/manual | advanced |
| PowerView | AD enumeration | Windows-only/manual | advanced |
| SharpView | AD enumeration | Windows-only/manual | advanced |
| Seatbelt | host situational awareness | Windows-only/manual | advanced |
| SharpUp | Windows privesc checks | Windows-only/manual | advanced |
| PowerUp | Windows privesc checks | Windows-only/manual | advanced |
| WinPEAS | Windows privilege escalation enumeration | Windows-only/manual | core |
| LaZagne | credential recovery validation | Windows-only/manual | sensitive |
| Snaffler | file share discovery | Windows-only/manual | core |

---

## 5. Pivoting / Tunneling / Internal Movement

Purpose:

- access internal networks during approved testing
- route traffic through controlled footholds
- support segmented lab environments
- validate network egress and segmentation

### Tools

| Tool | Purpose | Install Type | Priority |
|---|---|---|---|
| chisel | TCP/HTTP tunneling | GitHub/manual | core |
| ligolo-ng | modern pivoting/tunneling | GitHub/manual | core |
| proxychains-ng | proxy chaining | official | core |
| sshuttle | VPN-like SSH tunneling | official | optional |
| socat | socket relay and shell utility | official | core |
| rpivot | reverse SOCKS proxy | GitHub/manual | optional |
| reGeorg | webshell tunneling lab tool | GitHub/manual | advanced |
| frp | fast reverse proxy | GitHub/manual | optional |
| ssh | SSH tunneling | official | core |

---

## 6. Credentials / Hashes / Secrets

Purpose:

- identify credential exposure
- validate credential reuse
- crack hashes in authorized labs
- detect secrets in code/configuration

### Tools

| Tool | Purpose | Install Type | Priority |
|---|---|---|---|
| hashcat | password/hash cracking | official | core |
| john | password/hash cracking | official | core |
| hashid | hash identification | official/AUR | core |
| name-that-hash | hash identification | pipx | optional |
| cewl | custom wordlist generation | official | optional |
| crunch | wordlist generation | official | optional |
| princeprocessor | password candidate generation | GitHub/manual | optional |
| rulesets | hashcat/john rules | manual | optional |
| trufflehog | secrets discovery | official/Go | core |
| gitleaks | secrets discovery | official/Go | core |
| detect-secrets | secrets scanning | pipx | optional |
| git-secrets | secrets prevention | AUR/manual | optional |

---

## 7. Payloads / Shells / Post-Exploitation Support

Purpose:

- prepare controlled payloads
- stabilize shells
- transfer files
- support lab post-exploitation

### Tools / Resources

| Tool | Purpose | Install Type | Priority |
|---|---|---|---|
| metasploit | exploitation framework / msfvenom | official | core |
| msfvenom | payload generation | official via metasploit | core |
| rlwrap | shell usability | official | core |
| socat | reverse shells and relays | official | core |
| netcat | listeners and simple transfer | official | core |
| upx | binary packing/compression | official | optional |
| mingw-w64 | Windows cross-compilation | official | optional |
| mono | .NET compatibility | official | optional |
| wine | Windows binary execution | official | optional |
| revshells | reverse shell reference | manual/web | optional |
| PayloadsAllTheThings | payload reference | GitHub/manual | core |
| GTFOBins | Linux privesc reference | web/manual | core |
| LOLBAS | Windows living-off-the-land reference | web/manual | core |
| HackTricks | methodology reference | web/manual | core |
| InternalAllTheThings | internal pentest reference | GitHub/manual | core |

---

## 8. C2 / Adversary Emulation

Purpose:

- emulate adversary behavior in approved environments
- validate detection and response
- coordinate controlled operations

These tools are sensitive and should not be installed by default.

| Tool | Purpose | Install Type | Priority |
|---|---|---|---|
| Sliver | open-source C2 framework | GitHub/manual | advanced/sensitive |
| Mythic | C2 framework | GitHub/manual | advanced/sensitive |
| Havoc | C2 framework | GitHub/manual | advanced/sensitive |
| Covenant | C2 framework | GitHub/manual | advanced/sensitive |
| Metasploit | framework with session handling | official | core/advanced |
| Caldera | adversary emulation | GitHub/manual | purple-team |

Notes:

- C2 tooling should be optional.
- Use only in approved labs or operations.
- Document ROE, payload controls, callback infrastructure and cleanup plan.

---

## 9. Detection Engineering / Purple Team

Purpose:

- validate defensive controls
- build detections
- map activity to ATT&CK
- support SOC/SIEM workflows

### Tools

| Tool | Purpose | Install Type | Priority |
|---|---|---|---|
| Atomic Red Team | adversary emulation tests | GitHub/manual | core |
| Caldera | automated adversary emulation | GitHub/manual | optional |
| Sigma | detection rule format | GitHub/manual | core |
| YARA | pattern matching | official | core |
| Suricata | network detection | official | optional |
| Zeek | network security monitoring | official | optional |
| Velociraptor | endpoint visibility / DFIR | manual | optional |
| Chainsaw | Windows event log analysis | GitHub/manual | optional |
| Hayabusa | Windows event log threat hunting | GitHub/manual | optional |
| Sysmon configs | endpoint telemetry | GitHub/manual | optional |

---

## 10. Exfiltration Simulation / Impact Validation

Purpose:

- validate egress controls
- test DLP/SIEM/EDR visibility
- confirm whether approved synthetic data can leave the environment

This phase must be governed by ROE.

### Tools

| Tool | Purpose | Install Type | Priority |
|---|---|---|---|
| curl | HTTP/HTTPS transfer testing | official | core |
| wget | HTTP/HTTPS transfer testing | official | core |
| rsync | file synchronization | official | optional |
| scp | SSH-based transfer | official | core |
| rclone | cloud storage transfer testing | official/AUR | optional |
| dnsutils | DNS testing | official | core |
| tcpdump | traffic capture | official | core |
| tshark | CLI traffic inspection | official | core |
| Python HTTP server | controlled transfer lab | official via python | core |

Guidelines:

- use marker files
- use synthetic data
- respect volume limits
- document timestamps
- capture logs/PCAPs
- coordinate with Blue Team when applicable

---

## 11. Cloud / External Surface

Purpose:

- enumerate cloud-exposed assets
- review storage exposure
- validate IAM-related issues in authorized environments

### Tools

| Tool | Purpose | Install Type | Priority |
|---|---|---|---|
| aws-cli | AWS interaction | official | optional |
| azure-cli | Azure interaction | AUR/manual | optional |
| gcloud-cli | GCP interaction | AUR/manual | optional |
| ScoutSuite | cloud security auditing | pipx/GitHub | optional |
| Prowler | AWS/cloud security checks | pipx/GitHub | optional |
| Pacu | AWS exploitation framework | GitHub/manual | advanced |
| CloudFox | cloud enumeration | GitHub/manual | optional |
| S3Scanner | S3 bucket checks | pipx/GitHub | optional |
| trufflehog | cloud/code secret detection | official/Go | core |

---

## 12. OT / ICS Future Module

Purpose:

- prepare future OT/ICS security learning
- support industrial protocol labs
- avoid mixing OT tooling into the default workstation

This should remain a future optional module.

### Candidate Tools / Topics

| Tool / Topic | Purpose | Install Type | Priority |
|---|---|---|---|
| Wireshark ICS dissectors | protocol analysis | official | core |
| Scapy | packet crafting/labs | official/pip | optional |
| Modbus tools | Modbus lab interaction | manual | optional |
| S7 protocol tools | Siemens protocol labs | manual | optional |
| plcscan | PLC discovery lab tool | GitHub/manual | optional |
| OpenPLC | lab PLC environment | manual | optional |
| GRASSMARLIN | ICS network mapping | manual | optional |
| Nmap NSE ICS scripts | ICS discovery scripts | official/manual | optional |

---

## Default Install Policy

Alice Red Team Workstation should not install the full Red Team arsenal by default.

Recommended install levels:

| Level | Description |
|---|---|
| base | shell, terminal, tmux, Obsidian, dotfiles |
| offensive-core | general pentesting toolkit |
| web-api | web/API testing tools |
| ad-windows | AD and Windows internal assessment tools |
| pivoting | tunneling and internal movement tools |
| credentials | hashes, secrets and credential validation |
| purple-team | detection engineering and adversary emulation |
| c2 | optional/sensitive C2 tooling |
| cloud | cloud assessment tools |
| ot-ics | future OT/ICS lab tooling |

---

## Notes

This document is a roadmap and classification map.

It does not mean every tool should be installed immediately.

Tools should be selected based on:

- legal authorization
- operational need
- training objective
- system resources
- maintainability
- OPSEC and ROE requirements
