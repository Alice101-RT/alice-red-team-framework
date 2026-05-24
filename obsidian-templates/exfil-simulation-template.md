

# Exfiltration Simulation / Impact Validation

## 1. ROE

Approved: yes/no  
Approved data type: synthetic / marker / sample  
Approved volume:  
Approved channels:  
Time window:  
Detection coordination:  
Business owner / approver:  

---

## 2. Objective

What impact is being validated?

Examples:

- Can sensitive-looking data leave the network?
- Can outbound filtering detect the transfer?
- Can DLP / EDR / SIEM generate alerts?
- Can the Blue Team identify source and destination?
- Can the organization reconstruct the event timeline?

---

## 3. Data Used

| Data | Type | Size | Sensitivity | Notes |
|---|---|---:|---|---|
| marker.txt | synthetic | | none | |

---

## 4. Method

Describe the authorized method used.

Command / tool / technique:

- 

Channel:

- HTTP
- HTTPS
- DNS
- ICMP
- SMB
- Cloud storage
- Custom tunnel
- Other

---

## 5. Evidence

| Evidence | Location | Notes |
|---|---|---|
| Screenshot | | |
| Logs | | |
| PCAP | | |
| SIEM alert | | |
| EDR event | | |
| Proxy log | | |
| Firewall log | | |

---

## 6. Detection Notes

Observed alerts:  
Network logs:  
Endpoint logs:  
Proxy logs:  
Firewall logs:  
SIEM correlation:  
Blue Team response:  

---

## 7. Impact

What was proven?

- 
- 
- 

---

## 8. Limitations

What was not tested?

- 
- 
- 

---

## 9. Remediation / Controls

- Egress filtering
- DLP
- Proxy inspection
- DNS monitoring
- SIEM correlation
- EDR alerting
- Network segmentation
- Alert tuning
- User/entity behavior analytics

---

## 10. Report Notes

Executive summary:  

Technical summary:  

Recommended next steps:  