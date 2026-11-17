
# Ticket 06 — Employee Legal Name Change & Email Alias Management

**Category:** Identity & Access Management / Account Administration  
**Environment:** Service Desk Training Simulator  
**Issue Type:** Employee Identity Update / Email Configuration  
**Documentation Type:** Independent Technical Training

---

## 1. Ticket Overview

This service desk scenario involved an employee's legal name change and the associated updates required to maintain accurate account and email identity information.

The request highlighted the relationship between user profile attributes, organizational email addresses, and account continuity.

## 2. Reported Request

An employee required their account identity information to reflect a legal name change.

The scenario involved two related administrative concerns:

- Updating the employee's account identity information.
- Managing the employee's email address or alias configuration.

These changes must be coordinated carefully to avoid disrupting existing access or email delivery.

## 3. Technical Objective

Understand how to update an existing employee's account identity while maintaining continuity of access and email communication.

The intended outcome is an accurate employee profile with appropriate email addressing and preserved account functionality.

## 4. Account Administration Workflow

The following is a standard administrative workflow applicable to this scenario:

1. Review the employee's name-change request.
2. Confirm that the change has been approved through the appropriate organizational process.
3. Locate the employee's existing account in the identity-management system.
4. Review the current display name, username, and email attributes.
5. Update the approved name-related attributes.
6. Configure the appropriate email alias or primary address, according to organizational policy.
7. Preserve the existing address as an alias when required for continuity.
8. Verify that the account retains its existing permissions and required access.
9. Test email delivery to the appropriate addresses.
10. Document the changes and communicate completion.

**Documentation note:** This is the recommended technical workflow. The complete original simulator transcript was unavailable, so these steps are not represented as a verified record of actions performed.

## 5. Technical Explanation

### Display Name

The display name identifies an employee in directories, email clients, and collaboration applications.

Changing a display name does not necessarily change the account's sign-in identifier or email address.

### User Principal Name (UPN)

In Microsoft identity environments, the User Principal Name is commonly used as a sign-in identifier.

It may resemble an email address but serves a distinct administrative purpose.

Changing a UPN may affect authentication behavior, application integrations, and user sign-in instructions.

### Primary Email Address

The primary SMTP address is generally the default address used when sending email from a mailbox.

Organizations may update this address when an employee's name changes.

### Email Alias

An email alias is an additional address associated with an existing mailbox.

Maintaining an older address as an alias can help preserve delivery of messages sent to the employee's previous address.

An alias does not normally require creating a separate mailbox.

## 6. Identity and Access Considerations

Name changes should not automatically result in unnecessary account recreation.

Creating a new account instead of updating an existing one can introduce risks involving:

- Loss of existing permissions
- Disruption of application access
- Changes to account ownership
- Email delivery problems
- Inconsistent identity records

The appropriate approach depends on organizational policies and the capabilities of the identity platform.

## 7. Resolution and Outcome

The recorded simulator scenario involved employee name-change and email-alias administration.

The specific account attributes changed, simulator score, and final verification result were not available for independent review.

This case study therefore documents the technical scenario and applicable administrative procedure without claiming unverified changes.

## 8. Technical Skills Covered

- User account administration
- Identity attribute management
- Email alias configuration concepts
- Microsoft Entra ID fundamentals
- Microsoft 365 identity concepts
- Account continuity
- Change management
- Service request documentation

## 9. Lessons Learned

This scenario reinforced that an employee's identity consists of multiple attributes that may require separate administrative updates.

A legal name change does not necessarily require changing every account identifier.

Technicians must understand the differences between display names, sign-in names, primary email addresses, and aliases before making changes.

Maintaining account continuity and preserving existing access are important considerations during identity updates.

## 10. Supporting Evidence

This case study is based on the previously recorded service desk scenario category.

The original simulator instructions, complete action log, and completion screenshots were not available for verification.

---

**DuceTech | Enterprise IT Support | Service Desk Simulations**

*This case study documents independent technical training in a simulated service desk environment, not production employer experience.*
