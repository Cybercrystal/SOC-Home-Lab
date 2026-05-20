#!/bin/bash
# T1046 - Network scan (Reconnaissance)
nmap -sS -p 22,80,443,3389,9200 <windows-vm-ip>

# T1110 - SSH brute force simulation
for i in {1..10}; do
  ssh fakeuser@<windows-vm-ip> -o ConnectTimeout=2 2>/dev/null
done
