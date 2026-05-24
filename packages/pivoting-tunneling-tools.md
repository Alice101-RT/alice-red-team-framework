# Alice Red Team Workstation - Pivoting / Tunneling Tools

This document maps tools used for pivoting, tunneling, internal routing, proxying and controlled access to segmented networks during approved Red Team operations or internal assessments.

This module supports:

- internal network access
- segmented network validation
- SOCKS proxying
- reverse tunneling
- port forwarding
- controlled pivoting
- egress testing
- service access through intermediate hosts

This module should be installed separately from the base workstation.

---

## Installation Categories

| Category | Meaning |
|---|---|
| official | Available from Arch official repositories |
| AUR | Available through yay / AUR |
| Go | Go-based tool installed with go install |
| GitHub / manual | Manual clone, build or binary download |
| sensitive | Requires additional ROE and operational care |

---

## 1. Core Pivoting Tools

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| chisel | TCP/HTTP tunneling and reverse SOCKS | GitHub / manual | core |
| ligolo-ng | modern tunneling and pivoting framework | GitHub / manual | core |
| proxychains-ng | route tools through SOCKS proxies | official | core |
| socat | socket relay and forwarding | official | core |
| ssh | SSH port forwarding | official | core |
| sshuttle | VPN-like routing over SSH | official | optional |
| frp | fast reverse proxy | GitHub / manual | optional |
| rpivot | reverse SOCKS proxy | GitHub / manual | optional |
| reGeorg | webshell-based tunneling | GitHub / manual | advanced |
| gost | tunneling/proxy utility | Go / manual | optional |

---

## 2. Proxying

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| proxychains-ng | force TCP tools through proxy | official | core |
| redsocks | redirect TCP connections through proxy | official/AUR | optional |
| torsocks | route traffic through Tor SOCKS | official | optional |
| burpsuite | HTTP proxy for web testing | AUR / manual | core |
| mitmproxy | HTTP/HTTPS proxy | official / pipx | optional |

---

## 3. SSH Port Forwarding

SSH should always be understood before relying on external tools.

Useful modes:

| Mode | Purpose |
|---|---|
| Local port forward | access remote service locally |
| Remote port forward | expose local service remotely |
| Dynamic SOCKS proxy | route tools through SSH SOCKS |
| Jump host | reach internal hosts through intermediate system |

Examples should be documented in Obsidian under Command Notes.

---

## 4. Internal Routing

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| iproute2 | routing table management | official | core |
| iptables / nftables | traffic redirection/filtering | official | core |
| tcpdump | traffic verification | official | core |
| wireshark / tshark | packet analysis | official | core |

---

## 5. Operational Notes

Pivoting and tunneling can be sensitive because they may:

- cross network boundaries
- bypass segmentation
- generate unusual traffic patterns
- affect detection systems
- expose internal services through operator infrastructure

Always document:

- ROE approval
- tunnel type
- source host
- destination host
- exposed ports
- traffic route
- time window
- cleanup steps

---

## 6. Recommended Workflow

Recommended order:

1. Confirm ROE and allowed pivoting techniques.
2. Identify foothold host and reachable interfaces.
3. Enumerate internal routes and reachable subnets.
4. Choose tunnel type.
5. Start tunnel.
6. Verify connectivity.
7. Route only required tools through the tunnel.
8. Document commands and evidence.
9. Stop tunnel.
10. Validate cleanup.

---

## 7. Future Installer

A future module should be created as:

`scripts/install-pivoting`

The installer should separate:

- official packages
- Go tools
- GitHub/manual binaries
- sensitive tools

It should not automatically configure tunnels or run network redirection.
