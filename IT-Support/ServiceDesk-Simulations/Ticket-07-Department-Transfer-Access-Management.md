
# Ticket 07 — Department Transfer & Access Management

**Category:** Identity and Access Management  
**Environment:** Service Desk Training Simulator  
**Scenario:** Employee Department Transfer  
**Documentation Type:** Independent Technical Training

---

## 1. Ticket Overview

An employee transferred to a different department, requiring updates to their existing account permissions.

The request involved adjusting security group memberships to align the employee's access with their new departmental responsibilities.

## 2. Reported Request

The employee's existing permissions reflected their previous department.

The service request required:

- Assigning access associated with the new department.
- Removing security group memberships no longer required.
- Maintaining appropriate access based on the employee's updated role.

## 3. Technical Objective

Update the employee's group memberships to reflect the departmental transfer while avoiding unnecessary or outdated access privileges.

## 4. Resolution Workflow

The recorded simulator activity involved:

1. Reviewing the departmental transfer request.
2. Identifying the employee account requiring modification.
3. Updating security group membership to reflect the new department.
4. Removing obsolete group membership associated with the previous role.
5. Completing the access-management scenario.

Specific group names and validation actions have been omitted because the original detailed ticket record was not available for verification.

## 5. Resolution Summary

The recorded exercise involved modifying an existing user's access rather than provisioning an entirely new account.

The key administrative change was aligning group memberships with the employee's new responsibilities and removing outdated access.

No numerical simulator score or additional validation result is claimed in this case study.

## 6. Technical Explanation

Security groups allow administrators to manage access through group membership rather than assigning individual permissions for every resource.

When employees change departments, permissions should be reviewed to ensure they retain necessary access without accumulating privileges from previous roles.

This is commonly associated with the **mover** stage of the Joiner-Mover-Leaver (JML) identity lifecycle.

### Security Considerations

- **Least privilege:** Grant only the permissions required for the new role.
- **Access review:** Identify permissions that are no longer appropriate.
- **Group-based access control:** Use approved group memberships to manage access.
- **Documentation:** Maintain an accurate record of authorized account changes.

## 7. Technical Skills Demonstrated

- User account administration
- Security group membership management
- Departmental access changes
- Identity lifecycle management fundamentals
- Least-privilege access concepts
- Service request interpretation

## 8. Lessons Learned

Departmental transfers require more than granting new permissions.

Removing outdated access is equally important because retaining unnecessary privileges can increase security risk.

In a production environment, additional controls would include verifying the approved request, checking group membership before and after the change, testing authorized access, and recording the outcome.

These are recommended operational practices, not additional actions claimed to have been performed during this simulation.

## 9. Supporting Evidence

This case study is based on previously recorded simulator activity and scenario details.

Original completion screenshots and the full ticket transcript were not available for verification.

---

**DuceTech | Enterprise IT Support | Service Desk Simulations**

*This case study documents independent service desk training, not production employer experience.*
