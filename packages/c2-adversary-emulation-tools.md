# Alice Red Team Framework - C2 / Adversary Emulation Tools

This document maps tools and infrastructure used for Command and Control research, adversary emulation, controlled payload testing, detection validation and Red Team operations.

This module is sensitive.

It must only be used in approved labs, internal exercises or authorized Red Team operations under clear Rules of Engagement.

This module supports:

- adversary emulation
- C2 infrastructure planning
- payload behavior analysis
- callback infrastructure review
- detection validation
- purple team exercises
- cleanup planning
- operational documentation

This module should not be installed or executed by default.

---

## 1. Purpose

C2 and adversary emulation tooling is used to simulate adversary behavior in a controlled and authorized way.

The purpose is to validate:

- detection coverage
- endpoint telemetry
- network visibility
- EDR response
- SIEM alerts
- SOC workflows
- containment procedures
- cleanup processes
- reporting quality

This is not a generic exploitation module.

---

## 2. ROE Requirements

Before using any C2 or adversary emulation tool, document:

| Item | Value |
|---|---|
| Approved | yes/no |
| Operation type | lab / purple team / internal assessment / Red Team |
| Allowed payload types | |
| Allowed callback infrastructure | |
| Allowed target systems | |
| Allowed time window | |
| Blue Team awareness | blind / collaborative / purple team |
| Logging requirements | |
| Cleanup requirements | |
| Kill switch defined | yes/no |

---

## 3. C2 Frameworks

These tools are powerful and should not be installed automatically by the default workstation installer.

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| Sliver | open-source C2 framework | manual / GitHub | advanced / sensitive |
| Mythic | C2 framework with agent ecosystem | manual / GitHub | advanced / sensitive |
| Havoc | C2 framework | manual / GitHub | advanced / sensitive |
| Covenant | .NET-focused C2 framework | manual / GitHub | advanced / sensitive |
| Metasploit | exploitation framework with session handling | official | core / advanced |
| Caldera | adversary emulation platform | manual / GitHub | purple team |
| Prelude Operator | adversary emulation platform | manual | optional |

Notes:

- C2 frameworks should be reviewed before installation.
- Do not deploy listeners or payloads without explicit authorization.
- Do not expose C2 infrastructure publicly without a defined operational plan.
- Document every listener, payload, callback and cleanup step.

---

## 4. Adversary Emulation

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| Atomic Red Team | ATT&CK-based technique tests | manual / GitHub | core |
| Caldera | automated adversary emulation | manual / GitHub | optional |
| Metta | adversary simulation | manual / GitHub | optional |
| ATT&CK Navigator | technique mapping | web/manual | core |

Use cases:

- validate detection logic
- map procedures to MITRE ATT&CK
- test endpoint telemetry
- test SIEM correlation
- perform purple team exercises

---

## 5. Infrastructure Support

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| docker | container runtime | official | core |
| docker compose | multi-container environments | official | core |
| git | source control | official | core |
| go | Go tooling | official | core |
| python / pipx | Python tooling | official | core |
| nodejs / npm | JavaScript tooling | official | optional |
| jq | JSON processing | official | core |
| openssl | certificates and crypto operations | official | core |
| nginx | reverse proxy / lab infrastructure | official | optional |
| tmux | operator session management | official | core |

---

## 6. Payload / Agent Analysis Support

This workstation may support payload analysis, but payload generation and deployment must be governed by ROE.

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| strings | static inspection | official / binutils | core |
| file | file identification | official | core |
| yara | pattern matching | official | core |
| tcpdump | traffic capture | official | core |
| tshark | traffic inspection | official | core |
| wireshark | packet analysis | official | core |
| ghidra | reverse engineering | official / manual | optional |
| radare2 | reverse engineering | official | optional |
| gdb | debugging | official | optional |

---

## 7. Detection / Telemetry Expectations

Every C2 or emulation test should define expected telemetry.

Document:

- process creation
- network connection
- DNS query
- HTTP/S callback
- parent/child process relationship
- file write
- registry modification
- service creation
- scheduled task
- EDR alert
- SIEM alert
- proxy/firewall log
- packet capture

---

## 8. Operational Safety

C2 and adversary emulation tooling requires strict discipline.

Required controls:

- approved scope
- approved infrastructure
- defined payload behavior
- time-boxed execution
- logging enabled
- cleanup plan
- kill switch
- evidence collection
- reportable outcome
- no uncontrolled persistence
- no unauthorized lateral movement
- no real data exfiltration unless explicitly approved

---

## 9. Recommended Workflow

1. Confirm ROE.
2. Define test objective.
3. Select ATT&CK technique or emulation scenario.
4. Prepare lab or approved environment.
5. Define infrastructure.
6. Define payload behavior.
7. Coordinate logging and monitoring.
8. Execute controlled test.
9. Collect evidence.
10. Validate detection.
11. Clean up infrastructure and artifacts.
12. Document results.
13. Report gaps and recommendations.

---

## 10. What Should Not Be Automated

The Alice Red Team Framework public installer should not automatically:

- deploy C2 frameworks
- start listeners
- generate payloads
- expose callback infrastructure
- configure persistence
- run emulation tests
- execute agents
- download sensitive payload repositories without review

These actions must remain manual, deliberate and governed by ROE.

---

## 11. Future Installer

A support installer may be created as:

`scripts/install-c2-adversary-emulation`

The installer should only install supporting dependencies and create workspace directories.

It should not deploy or execute C2 frameworks automatically.

Recommended safe scope:

- docker
- docker compose
- go
- python-pipx
- nodejs / npm
- jq
- openssl
- nginx
- yara
- tcpdump
- tshark
- workspace directories

---

## 12. Obsidian Integration

Use:

- Command Notes Template
- Finding Template
- Report Template
- Exfil Simulation Template when applicable

Document:

- ROE
- technique
- infrastructure
- payload behavior
- expected telemetry
- observed telemetry
- detections
- gaps
- cleanup
- lessons learned

---

## 13. Notes

This module is part of a Red Team framework, not a generic exploitation toolkit.

It exists to support controlled adversary emulation, detection validation and professional Red Team operations.
