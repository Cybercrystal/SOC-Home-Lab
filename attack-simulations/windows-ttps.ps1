# T1136 - Create new local user (Persistence)
net user labattacker P@ssw0rd123! /add
net localgroup administrators labattacker /add

# T1110 - Brute force simulation (failed logons)
1..10 | ForEach-Object {
  $cred = New-Object System.Management.Automation.PSCredential("fakeuser", (ConvertTo-SecureString "wrongpass" -AsPlainText -Force))
  Start-Process cmd -Credential $cred -ErrorAction SilentlyContinue
}

# Cleanup
net user labattacker /delete
