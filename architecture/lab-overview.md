# Lab Architecture Overview

## Network Topology
- Host Machine: MacBook Pro M1 (32GB RAM)
- Hypervisor: VMware Fusion
- SIEM: Elastic Cloud (Hosted, GCP us-central1)

## Virtual Machines

### Windows 11 ARM VM
- OS: Windows 11 ARM Insider Preview
- Purpose: Windows event log source
- Agent: Elastic Agent 9.4.1

### Ubuntu 26.04 ARM VM
- OS: Ubuntu 26.04 LTS ARM64
- Purpose: Linux auth and syslog source
- Agent: Elastic Agent 9.4.1

### Kali Linux VM
- OS: Kali Linux ARM
- Purpose: Attack simulation

## Log Flow
Elastic Agent (Windows) --> Elastic Cloud SIEM
Elastic Agent (Ubuntu) --> Elastic Cloud SIEM
Okta API --> Elastic Cloud SIEM

## Integrations Configured
- Windows Event Logs
- Linux System Logs
- Okta System Logs 
