# SOC Analyst Home Lab

A hands-on cybersecurity home lab simulating a real SOC environment with threat detection, log analysis, and incident response capabilities.

## Lab Architecture

| Component | Purpose |
|-----------|---------|
| Elastic SIEM | Log ingestion, correlation, and detection |
| Windows 11 ARM VM | Windows event log source |
| Ubuntu 26.04 ARM VM | Linux auth/syslog source |
| Okta (Free Dev) | IAM log source, MFA policy |
| Kali Linux VM | Attack simulation |

## Detection Rules Built

| Rule Name | Event ID / Query | Severity |
|-----------|-----------------|---------|
| Windows Failed Login | event.code: 4625 | Medium |
| Windows Privilege Escalation | event.code: 4672 | High |
| Linux SSH Brute Force | system.auth + failure | High |
| Windows Account Lockout | event.code: 4740 | High |
| Okta User Deactivated | okta.system deactivate | Medium |

## Skills Demonstrated

- SIEM deployment and configuration
- KQL detection rule authoring
- Log source integration (Windows, Linux, Okta)
- Attack simulation and detection validation
- IAM policy configuration
