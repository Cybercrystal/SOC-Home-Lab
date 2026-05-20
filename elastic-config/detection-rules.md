# Detection Rules

## Rule 1: Windows Failed Login Attempt
- Event ID: 4625
- KQL: event.code: "4625"
- Severity: Medium
- Description: Detects failed login attempts on Windows. May indicate brute force or credential stuffing.

## Rule 2: Windows Privilege Escalation
- Event ID: 4672
- KQL: event.code: "4672"
- Severity: High
- Description: Detects special privileges assigned to new logon. May indicate privilege escalation.

## Rule 3: Linux SSH Brute Force
- KQL: event.dataset: "system.auth" and event.outcome: "failure"
- Severity: High
- Description: Detects repeated authentication failures on Linux. May indicate SSH brute force.

## Rule 4: Windows Account Lockout
- Event ID: 4740
- KQL: event.code: "4740"
- Severity: High
- Description: Detects Windows account lockouts. Often follows a brute force attack.

## Rule 5: Okta User Deactivated
- KQL: event.dataset: "okta.system" and event.action: "user.lifecycle.deactivate"
- Severity: Medium
- Description: Detects Okta user deactivation. May indicate insider threat or unauthorized admin activity.
