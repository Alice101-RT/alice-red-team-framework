# Alice Red Team Framework - Purple Team / Detection Tools

This document maps tools used for adversary emulation, detection engineering, threat hunting, DFIR support and validation of defensive controls.

This module supports:

- adversary emulation
- detection validation
- ATT&CK mapping
- Sigma / YARA workflows
- Windows event log analysis
- network telemetry review
- endpoint visibility
- SOC/SIEM collaboration
- Purple Team exercises

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
| Windows-only | Intended to run in Windows environments |
| optional | Useful but not required by default |

---

## 1. Adversary Emulation

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| Atomic Red Team | ATT&CK-based adversary emulation tests | GitHub / manual | core |
| Caldera | Adversary emulation platform | GitHub / manual | optional |
| Prelude Operator | adversary emulation platform | manual | optional |
| Metta | adversary simulation | GitHub / manual | optional |

Notes:

- These tools should be used only in approved environments.
- Tests should be mapped to ATT&CK techniques.
- Execution should be coordinated with defensive teams when applicable.

---

## 2. Detection Rules

| Tool / Format | Purpose | Install Method | Priority |
|---|---|---|---|
| Sigma | Generic SIEM detection rule format | GitHub / manual | core |
| sigmac / pySigma | Sigma conversion workflows | pipx / GitHub | core |
| YARA | Pattern matching for files/malware/research | official | core |
| YARA rules | detection rule collections | GitHub / manual | optional |
| Suricata rules | network detection content | manual | optional |
| Chronicle YARA-L | Chronicle detection logic | platform-specific | optional |

---

## 3. Windows Event Log Analysis

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| Hayabusa | Windows event log threat hunting | GitHub / manual | core |
| Chainsaw | Windows event log analysis | GitHub / manual | core |
| EvtxECmd | Windows EVTX parsing | Windows-only / manual | optional |
| Timeline Explorer | timeline review | Windows-only / manual | optional |
| Sysmon | endpoint telemetry | Windows-only / manual | core |
| SwiftOnSecurity Sysmon config | Sysmon baseline config | GitHub / manual | optional |
| Olaf Hartong Sysmon config | Sysmon modular config | GitHub / manual | optional |

---

## 4. Network Detection / Telemetry

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| Wireshark | packet analysis | official | core |
| tshark | CLI packet analysis | official | core |
| tcpdump | packet capture | official | core |
| Zeek | network security monitoring | official / AUR | optional |
| Suricata | IDS/IPS and network detection | official | optional |
| Arkime | packet capture and indexing | manual | optional |
| RITA | beaconing and traffic analysis | manual | optional |

---

## 5. Endpoint / DFIR Support

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| Velociraptor | endpoint visibility and DFIR | manual | optional |
| osquery | endpoint querying | official / AUR | optional |
| GRR | incident response framework | manual | optional |
| Timesketch | timeline analysis | manual | optional |
| Plaso / log2timeline | timeline generation | pipx / manual | optional |

---

## 6. ATT&CK Mapping

| Tool / Resource | Purpose | Install Method | Priority |
|---|---|---|---|
| MITRE ATT&CK | technique mapping | web/manual | core |
| ATT&CK Navigator | visual mapping | web/manual | core |
| DeTT&CT | ATT&CK coverage mapping | GitHub / manual | optional |
| Atomic Red Team | technique execution mapping | GitHub / manual | core |

---

## 7. SIEM / SOAR Integration Notes

This module should support workflows such as:

- mapping offensive actions to detections
- validating alert coverage
- documenting missed detections
- creating detection engineering tasks
- supporting SOAR playbook design
- mapping findings to SIEM rules
- producing Purple Team reports

Relevant platforms may include:

- Google Chronicle
- Microsoft Sentinel
- Splunk
- Elastic
- QRadar
- Cortex XSOAR
- TheHive
- Shuffle
- Jira / ticketing workflows

Platform-specific integrations should not be included by default.

---

## 8. Evidence and Reporting

Purple Team evidence should include:

- technique ID
- command or procedure
- timestamp
- source host
- target host
- expected telemetry
- observed telemetry
- SIEM alert status
- EDR alert status
- logs collected
- detection gap
- remediation recommendation

Use Obsidian templates:

- Finding Template
- Command Notes Template
- Report Template
- Exfil Simulation Template when relevant

---

## 9. Recommended Workflow

Recommended order:

1. Confirm ROE and test plan.
2. Select ATT&CK techniques.
3. Define expected telemetry.
4. Execute controlled emulation.
5. Collect endpoint/network/SIEM evidence.
6. Compare expected vs observed detection.
7. Document gaps.
8. Create detection recommendations.
9. Retest improved detections.
10. Produce report.

---

## 10. Future Installer

A future module should be created as:

`scripts/install-purple-team`

The installer should separate:

- official packages
- GitHub/manual tools
- Windows-only tools
- platform-specific integrations

It should not execute emulation tests automatically.
