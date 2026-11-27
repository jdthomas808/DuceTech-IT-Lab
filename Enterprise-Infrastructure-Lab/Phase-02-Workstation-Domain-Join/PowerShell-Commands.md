
# Phase 02 — PowerShell & Command-Line Reference

## Overview

This document provides a technical reference for the PowerShell and Windows command-line utilities used during workstation deployment, Active Directory integration, authentication verification, and troubleshooting.

---

## 1. Workstation Identification

**Environment:** Windows 11 | Command Prompt

```cmd
hostname
```

**Purpose:** Identifies the current computer's hostname.

**Verified Result:** DT-WS01 following workstation renaming.

---

## 2. Network Configuration Verification

**Environment:** Windows 11 | Command Prompt

```cmd
ipconfig /all
```

**Purpose:** Displays detailed network adapter and TCP/IP configuration.

### Verified Configuration

| Parameter | Value |
|---|---|
| Network Adapter | Ethernet0 |
| IPv4 Address | 192.168.50.20 |
| Subnet Mask | 255.255.255.0 |
| DNS Server | 192.168.50.10 |
| DHCP Enabled | No |
| Default Gateway | Not configured |

**Enterprise Application:** Verify workstation addressing, identify incorrect DNS settings, and troubleshoot network connectivity.

---

## 3. Domain Controller Connectivity

**Environment:** Windows 11 | Command Prompt

```cmd
ping 192.168.50.10
```

**Purpose:** Tests IP connectivity between the workstation and domain controller using ICMP.

### Verified Results

- Packets Sent: 4
- Packets Received: 4
- Packet Loss: 0%
- Response Time: Less than 1 ms

**Enterprise Application:** Establish basic network reachability before investigating higher-level services.

---

## 4. DNS Resolution

**Environment:** Windows 11 | Command Prompt

```cmd
nslookup DT-DC01.ducetech.test
```

**Purpose:** Verifies that the workstation can resolve the domain controller's fully qualified domain name.

### Verified Results

| Parameter | Value |
|---|---|
| DNS Server | DT-DC01.ducetech.test |
| DNS Server Address | 192.168.50.10 |
| Resolved Hostname | DT-DC01.ducetech.test |
| Resolved IP Address | 192.168.50.10 |

**Enterprise Application:** Diagnose DNS-related connectivity and Active Directory integration issues.

---

## 5. Active Directory Domain Controller Discovery

**Environment:** Windows 11 | Command Prompt

```cmd
nltest /dsgetdc:ducetech.test
```

**Purpose:** Locates an available Active Directory domain controller for the specified domain.

### Verified Results

| Parameter | Value |
|---|---|
| Domain Controller | DT-DC01.ducetech.test |
| IP Address | 192.168.50.10 |
| Domain | ducetech.test |
| Forest | ducetech.test |
| Site | Default-First-Site-Name |
| Command Status | Successful |

**Enterprise Application:** Verify domain controller discovery before domain joining or troubleshooting authentication failures.

---

## 6. System Properties

**Environment:** Windows Run

```cmd
sysdm.cpl
```

**Purpose:** Opens System Properties for computer naming and domain membership configuration.

### Actions Performed

- Renamed workstation to DT-WS01.
- Joined workstation to ducetech.test.
- Restarted workstation to apply configuration changes.

**Enterprise Application:** Workstation deployment and domain membership administration.

---

## 7. Domain Membership Verification

**Environment:** Windows 11 | PowerShell

```powershell
Get-CimInstance Win32_ComputerSystem | Select-Object Name, Domain, PartOfDomain
```

**Purpose:** Retrieves computer identification and domain membership information using Windows Management Instrumentation through CIM.

### Verified Results

| Name | Domain | PartOfDomain |
|---|---|---|
| DT-WS01 | ducetech.test | True |

**Enterprise Application:** Programmatically verify workstation domain membership and support endpoint inventory procedures.

---

## 8. Authenticated User Verification

**Environment:** Windows 11 | Command Prompt

```cmd
whoami
```

**Purpose:** Displays the currently authenticated user identity.

**Verified Result:**

```text
ducetech\d.lockley
```

**Enterprise Application:** Distinguish local and domain user identities during authentication and access troubleshooting.

---

## 9. Logon Server Verification

**Environment:** Windows 11 | Command Prompt

```cmd
echo %LOGONSERVER%
```

**Purpose:** Displays the logon server associated with the current user session.

**Verified Result:**

```text
\\DT-DC01
```

**Enterprise Application:** Identify the domain controller associated with a user's logon session.

---

## 10. Windows Service Inspection

**Environment:** Windows Run

```cmd
services.msc
```

**Purpose:** Opens the Windows Services management console.

### Verified VMware Tools Configuration

| Parameter | Result |
|---|---|
| Service | VMware Tools |
| Status | Running |
| Startup Type | Automatic |

**Enterprise Application:** Investigate background services supporting operating system and application functionality.

---

## 11. VMware Tools Process Inspection

**Environment:** Windows 11 | Command Prompt

```cmd
tasklist /fi "imagename eq vmtoolsd.exe"
```

**Purpose:** Filters running processes to identify VMware Tools instances and their associated session IDs.

### Observed Results

- VMware Tools process detected in Session 0.
- VMware Tools process detected in Session 1.
- No VMware Tools process detected in Dale Lockley's active Session 2 during troubleshooting.

**Enterprise Application:** Investigate process availability and user-session-specific application failures.

---

## 12. Windows User Session Inspection

**Environment:** Windows 11 | Command Prompt

```cmd
query user
```

**Purpose:** Displays signed-in users, session identifiers, and session states.

### Observed Results

| User | Session ID | State |
|---|---|---|
| jdtho | 1 | Disconnected |
| d.lockley | 2 | Active |

**Enterprise Application:** Identify active and disconnected user sessions during desktop support and remote administration.

---

## 13. Current Session Identification

**Environment:** Windows 11 | Command Prompt

```cmd
echo %SESSIONNAME%
```

**Purpose:** Displays the current Windows session name.

**Enterprise Application:** Assist with user-session and remote desktop troubleshooting.

---

## 14. VMware Tools Executable Discovery

**Environment:** Windows 11 | Command Prompt

```cmd
where /r "C:\Program Files" vmtoolsd.exe
```

**Purpose:** Recursively searches the Program Files directory for the VMware Tools executable.

**Enterprise Application:** Locate installed application executables during troubleshooting.

---

## 15. Manual VMware Tools User-Process Launch

**Environment:** Windows Run

```cmd
"C:\Program Files\VMware\VMware Tools\vmtoolsd.exe" -n vmusr
```

**Purpose:** Attempts to initialize the VMware Tools user-session component.

**Observed Result:** Did not restore clipboard functionality.

**Final Resolution:** Restarted the workstation and verified successful host-to-guest clipboard functionality.

This command was an attempted remediation, not the confirmed solution.

---

## Quick Reference

| Command | Primary Function |
|---|---|
| hostname | Computer identification |
| ipconfig /all | Network configuration |
| ping | IP connectivity |
| nslookup | DNS resolution |
| nltest | Domain controller discovery |
| sysdm.cpl | System and domain configuration |
| Get-CimInstance | System and domain membership verification |
| whoami | User identity verification |
| echo %LOGONSERVER% | Logon server identification |
| services.msc | Windows service management |
| tasklist | Process inspection |
| query user | User-session inspection |
| echo %SESSIONNAME% | Session identification |
| where /r | Executable discovery |
| vmtoolsd.exe -n vmusr | VMware user-process initialization attempt |

## Key Takeaways

- Verify network connectivity before troubleshooting domain services.
- Successful IP connectivity does not guarantee successful DNS resolution.
- Domain controller discovery is essential for Active Directory integration.
- PowerShell provides efficient programmatic system verification.
- User identities, system services, and user-session processes represent different components of Windows administration.
- Prioritize simple, low-risk remediation before extensive troubleshooting.
- Document both successful and unsuccessful remediation attempts accurately.

## Related Documentation

- [Phase 02 Overview](README.md)
- [Troubleshooting Documentation](Troubleshooting.md)
