# Alice Red Team Workstation - Exfiltration / Impact Validation Tools

This document maps tools used for authorized exfiltration simulation, impact validation, egress testing and defensive control validation during Red Team operations or advanced penetration tests.

This module supports:

- approved data transfer validation
- synthetic data exfiltration
- marker file exfiltration
- egress control testing
- DLP / SIEM / EDR validation
- proxy and firewall visibility testing
- evidence collection
- impact reporting
- cleanup validation

This module must always operate under approved Rules of Engagement.

---

## 1. Purpose

Exfiltration is a valid phase of Red Team operations and advanced penetration testing when explicitly authorized.

The objective is not uncontrolled data theft.

The objective is to validate:

- whether approved data can leave the environment
- which egress paths are available
- whether controls detect the transfer
- whether the Blue Team can reconstruct the event
- whether DLP, proxy, firewall, EDR or SIEM alerts are generated
- what business impact would exist if the data were real

---

## 2. ROE Requirements

Before any exfiltration simulation, document:

| Item | Value |
|---|---|
| Approved | yes/no |
| Approved data type | synthetic / marker / sample / client-approved |
| Approved volume | |
| Approved channels | |
| Time window | |
| Source system | |
| Destination system | |
| Blue Team notified | yes/no |
| Cleanup required | yes/no |
| Evidence required | yes/no |

---

## 3. Data Preparation

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| tar | archive files | official | core |
| gzip | compression | official | core |
| zip | archive/compression | official | core |
| 7zip | archive/compression | official | optional |
| split | split files into chunks | official/coreutils | core |
| base64 | encode/decode test data | official/coreutils | core |
| openssl | encryption/hash/testing support | official | core |
| sha256sum | file hashing/integrity | official/coreutils | core |
| dd | generate test files | official/coreutils | core |
| jq | JSON data handling | official | optional |

Use cases:

- create marker files
- create synthetic datasets
- compress approved data
- split large approved test files
- calculate hashes for integrity
- document evidence before and after transfer

---

## 4. Transfer / Exfil Channels

### HTTP / HTTPS

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| curl | HTTP/HTTPS transfer | official | core |
| wget | HTTP/HTTPS download/upload workflows | official | core |
| Python HTTP server | controlled local transfer server | official/python | core |
| Burp Suite | inspect HTTP exfil simulation | AUR/manual | optional |

Use cases:

- upload marker files to approved endpoint
- download files from controlled host
- validate proxy visibility
- inspect request/response evidence

---

### SSH / SCP / SFTP / Rsync

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| openssh | ssh/scp/sftp | official | core |
| rsync | file synchronization | official | core |
| sshuttle | routed SSH tunnel testing | official | optional |

Use cases:

- transfer approved test files
- validate SSH egress controls
- validate logging of SSH-based transfer
- compare transfer hashes before and after

---

### SMB / Internal Shares

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| smbclient | SMB file transfer | official | core |
| smbmap | SMB share review | AUR/pipx | optional |
| netexec | SMB validation | pipx/AUR | optional |

Use cases:

- validate internal share exposure
- test controlled file movement inside the environment
- document share permissions
- assess internal data staging risk

---

### DNS / Egress Testing

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| dig | DNS queries | official/bind | core |
| nslookup | DNS checks | official/bind | core |
| dnsutils | DNS toolkit | official/bind | core |
| tcpdump | packet capture | official | core |
| tshark | CLI packet analysis | official | core |

Use cases:

- validate DNS visibility
- test approved DNS egress patterns
- capture DNS traffic
- document detections

Note:

DNS-based exfiltration tests must be explicitly authorized and volume-limited.

---

### Cloud / Object Storage

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| rclone | cloud storage transfer testing | official/AUR | optional |
| aws-cli | AWS interaction | official/AUR | optional |
| azure-cli | Azure interaction | AUR/manual | optional |
| gcloud-cli | GCP interaction | AUR/manual | optional |

Use cases:

- validate cloud egress policy
- test approved upload destination
- validate proxy/DLP/cloud logging
- document storage access controls

Cloud tests must be explicitly approved.

---

## 5. Evidence Collection

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| tcpdump | traffic capture | official | core |
| tshark | CLI packet analysis | official | core |
| wireshark | packet analysis | official | core |
| sha256sum | integrity validation | official/coreutils | core |
| script | terminal session capture | official/util-linux | optional |
| asciinema | terminal recording | official/AUR | optional |
| flameshot | screenshots | official | core |
| spectacle | screenshots | official | core |

Evidence should include:

- command used
- timestamp
- source host
- destination host
- file name
- file size
- SHA256 hash
- channel used
- PCAP/log reference
- SIEM/EDR/proxy/firewall result
- detection status
- cleanup status

---

## 6. Detection Validation

Exfiltration simulation should answer:

| Question | Result |
|---|---|
| Was the transfer blocked? | |
| Was the transfer logged? | |
| Was an alert generated? | |
| Which control detected it? | |
| Was the source host identified? | |
| Was the destination identified? | |
| Was the file name visible? | |
| Was the file size visible? | |
| Was content inspection triggered? | |
| Was the event correlated in SIEM? | |

---

## 7. Recommended Workflow

1. Confirm ROE.
2. Define approved data type.
3. Create marker or synthetic data.
4. Calculate hash and size.
5. Select approved channel.
6. Execute controlled transfer.
7. Capture local evidence.
8. Collect network/endpoint/proxy/SIEM evidence.
9. Validate detection.
10. Document impact.
11. Remove test data.
12. Report findings and recommendations.

---

## 8. Synthetic Data Examples

Recommended test data types:

- marker file
- fake customer records
- synthetic credentials
- fake financial data
- dummy documents
- generated CSV
- generated JSON
- harmless binary blob

Do not use real sensitive data unless explicitly approved.

---

## 9. Controls To Validate

- egress filtering
- DNS monitoring
- proxy logging
- DLP
- EDR
- SIEM correlation
- firewall logging
- cloud access controls
- CASB
- user/entity behavior analytics
- network segmentation

---

## 10. Reporting Notes

Report should include:

- approved scope
- data type
- volume
- transfer method
- detection result
- missed controls
- evidence
- risk
- remediation
- retest recommendation

Use:

- Exfil Simulation Template
- Finding Template
- Report Template

---

## 11. Future Installer

A future module may be created as:

`scripts/install-exfil-impact`

The installer should include only safe supporting tools:

- curl
- wget
- rsync
- openssh
- rclone
- tcpdump
- tshark
- wireshark
- jq
- 7zip
- flameshot
- spectacle

It should not automatically configure exfiltration channels.

It should not execute transfers.

It should not include real data.
