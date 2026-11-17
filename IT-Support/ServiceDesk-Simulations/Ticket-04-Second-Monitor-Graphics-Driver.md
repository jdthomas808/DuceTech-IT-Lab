
# Ticket 04 — Second Monitor Not Detected

**Category:** Desktop Support / Display Troubleshooting  
**Environment:** Service Desk Training Simulator  
**Issue Type:** External Monitor Not Detected  
**Root Cause:** Outdated graphics driver  
**Resolution:** Graphics driver update and workstation restart

---

## 1. Ticket Overview

An employee reported that their second monitor was not functioning as expected.

The workstation required investigation to determine whether the issue originated from a physical connection, display configuration, or graphics driver.

The scenario involved remotely troubleshooting a Windows workstation and restoring dual-monitor functionality.

## 2. Reported Issue

The employee was unable to use their second monitor.

During the initial investigation, the user confirmed:

- The monitor was connected directly to the computer.
- No docking station or display adapter was involved.
- Device Manager showed no yellow warning indicators.
- The display adapter's device status reported: "This device is working properly."

Despite these observations, the second monitor remained unavailable.

## 3. Technical Objective

Identify the underlying cause of the secondary display failure and restore normal dual-monitor functionality.

Avoid unnecessary hardware replacement or escalation when an available software-based resolution can address the issue.

## 4. Initial Troubleshooting

During the original simulation, I investigated the monitor connection and asked the employee to inspect the graphics adapter in Device Manager.

The absence of warning indicators initially suggested that Windows recognized the graphics device without reporting an obvious device error.

However, this did not establish that the installed driver was current or functioning correctly with the second display.

The initial troubleshooting attempt resulted in an unnecessary escalation and a deduction in simulator points.

## 5. Simulator-Verified Resolution Procedure

After reviewing the simulator feedback, the correct resolution procedure was identified:

1. Open **Tools > Remote Desktop**.
2. Select **Connect** next to the affected employee's computer.
3. Open the **System Update** application.
4. Check for available updates.
5. Identify the available graphics driver update.
6. Install all available updates, including the graphics driver.
7. Restart the workstation to apply the changes.
8. Confirm that the second monitor functions correctly.

**Documentation distinction:** The initial investigation and escalation occurred during the exercise. The steps above represent the simulator's correct solution feedback, not an independently completed second attempt.

## 6. Root Cause Analysis

The simulator identified an available graphics driver update as the required corrective action.

A graphics driver enables communication between Windows and the computer's display hardware.

An outdated or incompatible driver can cause problems with:

- External monitor detection
- Multiple-display configuration
- Display resolution
- Refresh rate selection
- Graphics output stability

Importantly, Device Manager may report that a device is working properly even when a newer driver is required to resolve a specific problem.

## 7. Resolution Summary

**Simulator-recommended resolution:** Install the graphics driver update through System Update, restart the workstation, and verify that the second monitor works.

**Initial attempt outcome:** Unnecessary escalation resulted in lost simulator points.

**Key finding:** A normal Device Manager status does not rule out driver-related display problems.

The simulator supplied the successful resolution procedure after the initial attempt. No independent successful retest is claimed.

## 8. Technical Skills Demonstrated

- Windows display troubleshooting
- Remote desktop support workflow
- Device Manager diagnostics
- Graphics driver troubleshooting
- System update management
- Root cause analysis
- Escalation decision-making
- Technical feedback analysis

## 9. Lessons Learned

This exercise reinforced an important principle of desktop support:

**A device reporting a healthy status does not guarantee that its software configuration is fully functional.**

The initial troubleshooting focused on physical connections and Device Manager status but did not investigate available graphics driver updates before escalation.

The correct approach was to use the available remote support tools, check for system updates, install the graphics driver, restart the workstation, and verify the result.

In future display-related incidents, I would include driver version and update checks before escalating, provided the troubleshooting falls within the technician's authorized responsibilities.

## 10. Supporting Evidence

This case study is based on the recorded user interaction and the simulator's original correct solution feedback.

The full original ticket transcript and completion screenshots were not retained.

---

**DuceTech | Enterprise IT Support | Service Desk Simulations**

*This case study documents independent technical training, including the initial troubleshooting outcome and lessons learned.*
