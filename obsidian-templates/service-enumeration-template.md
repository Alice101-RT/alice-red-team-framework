

# Service Enumeration: {{service-name}}

## 1. Service Information

**Target:**  
**Host / IP:**  
**Port:**  
**Protocol:** TCP / UDP  
**Service:**  
**Version:**  
**Detected by:** nmap / manual / banner / other  

---

## 2. Initial Checks

```bash
# Initial commands
```

---

## 3. Banner / Version

```text
Banner:
Version:
Technology:
Operating system hints:
```

---

## 4. Authentication

| Item | Value |
|---|---|
| Requires authentication | yes/no |
| Anonymous access | yes/no |
| Default credentials tested | yes/no |
| Valid users identified | |
| Lockout risk | low/medium/high |

---

## 5. Enumeration Notes

```text
Interesting information:
Misconfigurations:
Writable areas:
Readable areas:
Sensitive paths:
Possible usernames:
Possible credentials:
```

---

## 6. Known Vulnerabilities / Leads

| Lead | Evidence | Priority | Next Action |
|---|---|---:|---|
| | | | |

---

## 7. Service-Specific Checklist

### HTTP / HTTPS

- [ ] Check title and headers
- [ ] Identify technologies
- [ ] Check robots.txt
- [ ] Check sitemap.xml
- [ ] Directory fuzzing
- [ ] Parameter discovery
- [ ] Authentication testing
- [ ] File upload testing
- [ ] Common vulnerabilities

### SMB

- [ ] List shares
- [ ] Check anonymous access
- [ ] Enumerate users
- [ ] Check permissions
- [ ] Download interesting files
- [ ] Check signing
- [ ] Check domain info

### FTP

- [ ] Check anonymous login
- [ ] Check writable directories
- [ ] Check file listing
- [ ] Download interesting files
- [ ] Check version vulnerabilities

### SSH

- [ ] Banner grab
- [ ] Check allowed auth methods
- [ ] Check username validity if applicable
- [ ] Test only approved credentials

### DNS

- [ ] Zone transfer
- [ ] Subdomain discovery
- [ ] Interesting records
- [ ] Reverse lookup
- [ ] Name server info

### LDAP / AD

- [ ] RootDSE
- [ ] Domain naming context
- [ ] Users
- [ ] Groups
- [ ] Policies
- [ ] Kerberos-related leads
- [ ] BloodHound path if applicable

---

## 8. Useful Commands

```bash
# Add useful commands here
```

---

## 9. Evidence

| Evidence | Location | Notes |
|---|---|---|
| Screenshot | | |
| Command output | | |
| File | | |

---

## 10. Next Actions

- [ ] 
- [ ] 
- [ ] 

---

## 11. Related Findings

- [[Finding Template]]