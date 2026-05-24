# Alice Red Team Workstation - Web / API Tools

This document maps tools used for web application testing, API assessment, content discovery, parameter discovery, vulnerability validation and attack surface analysis.

This module supports:

- web enumeration
- API discovery
- content fuzzing
- parameter discovery
- vulnerability validation
- Burp Suite workflow
- JavaScript analysis
- authentication testing
- access control testing
- JWT / OAuth testing

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
| optional | Useful, but not required for the base workflow |

---

## 1. Proxy / Interception

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| Burp Suite | Interception proxy and web testing platform | AUR / manual | core |
| Caido | Modern web security proxy | manual | optional |
| ZAP | OWASP web proxy/scanner | official/AUR | optional |

Notes:

- Burp Suite is the primary recommended proxy.
- ZAP is useful for open-source workflows.
- Caido can be added later as an optional modern proxy.

---

## 2. Content Discovery

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| ffuf | Fast web fuzzing | AUR / Go | core |
| feroxbuster | Recursive content discovery | AUR / official depending on repo state | core |
| gobuster | Directory and DNS fuzzing | official | core |
| dirsearch | Web path discovery | AUR / GitHub | core |
| seclists | Wordlists for discovery | AUR / manual | core |

---

## 3. HTTP Probing / Attack Surface

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| httpx | HTTP probing and metadata collection | Go | core |
| katana | Web crawler/spider | Go | core |
| hakrawler | Web crawler | Go | optional |
| gau | Historical URL collection | Go | optional |
| waybackurls | Historical URL collection | Go | optional |

---

## 4. Subdomain / DNS Discovery

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| subfinder | Subdomain discovery | Go | core |
| amass | Attack surface mapping | official/AUR | core |
| dnsx | DNS toolkit | Go | core |
| shuffledns | DNS brute forcing / resolution | Go | optional |
| puredns | DNS resolution / brute forcing | Go | optional |

---

## 5. Vulnerability Templates / Validation

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| nuclei | Template-based vulnerability validation | Go | core |
| nuclei-templates | Nuclei templates | manual / nuclei update | core |
| nikto | Web server checks | official | optional |
| sqlmap | SQL injection validation | official | core |

Notes:

- Nuclei should be used with care.
- Avoid blind template blasting against targets without permission.
- Always document evidence and impact.

---

## 6. Parameter Discovery

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| arjun | HTTP parameter discovery | pipx | core |
| paramspider | Parameter discovery from archives | pipx / GitHub | optional |
| x8 | Hidden parameter discovery | GitHub/manual | optional |

---

## 7. XSS / Client-Side Testing

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| dalfox | XSS testing and validation | Go | optional |
| XSStrike | XSS testing | GitHub/manual | optional |
| LinkFinder | JavaScript endpoint discovery | GitHub/manual | optional |

---

## 8. JWT / OAuth / Auth Testing

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| jwt-tool | JWT testing | GitHub/manual | core |
| jose tools | JOSE/JWT operations | official/AUR | optional |
| Burp extensions | JWT/OAuth testing inside Burp | manual | core |

---

## 9. API Testing

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| kiterunner | API route discovery | GitHub/manual | optional |
| postman | API testing | manual | optional |
| insomnia | API testing | official/AUR | optional |
| curl | Manual HTTP/API testing | official | core |
| jq | JSON parsing | official | core |

---

## 10. JavaScript / Source Review

| Tool | Purpose | Install Method | Priority |
|---|---|---|---|
| LinkFinder | JS endpoint discovery | GitHub/manual | optional |
| SecretFinder | JS secret discovery | GitHub/manual | optional |
| trufflehog | Secret discovery | official/Go | core |
| gitleaks | Secret discovery | official/Go | core |

---

## 11. Wordlists

| Tool / Resource | Purpose | Install Method | Priority |
|---|---|---|---|
| seclists | General web/security wordlists | AUR/manual | core |
| raft wordlists | Web content discovery | included in seclists | core |
| assetnote wordlists | Web/API discovery | manual | optional |
| custom wordlists | Target-specific wordlists | manual | core |

---

## 12. Recommended Web Workflow

Recommended order:

1. Identify web services.
2. Probe HTTP metadata.
3. Capture baseline in Burp.
4. Fingerprint technology.
5. Crawl with browser/Burp/Katana.
6. Fuzz directories and files.
7. Discover parameters.
8. Test authentication and access control.
9. Validate injection vectors.
10. Review JavaScript.
11. Document findings in Obsidian.
12. Save evidence and screenshots.

---

## 13. Safety / ROE Notes

Do not run aggressive fuzzing without approval.

Document:

- target
- wordlist
- rate
- time window
- user-agent
- authentication state
- evidence location

High-risk actions:

- destructive HTTP methods
- authenticated fuzzing
- file upload testing
- SQL injection exploitation
- mass nuclei scans
- brute force authentication
- API mutation testing

---

## 14. Future Installer

A future module should be created as:

`scripts/install-web-api`

The installer should separate:

- official packages
- AUR packages
- Go tools
- pipx tools
- manual tools

It should not install every optional tool by default.
