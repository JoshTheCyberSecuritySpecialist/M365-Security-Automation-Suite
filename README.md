![M365 Security Automation Suite Banner](./assets/ChatGPT%20Image%20Apr%2010,%202025,%2012_17_52%20AM.png)


# M365 Security Automation Suite 🛡️

A collection of PowerShell scripts designed to automate key security, compliance, and admin tasks across Microsoft 365. This project reflects real-world enterprise operations, especially in environments like NASA or Fortune 500 organizations with hybrid cloud deployments.

## 🔧 Modules Included

### 1️⃣ New-M365User.ps1
Create a new Microsoft 365 user, assign a license, and enable mailbox auditing.

### 2️⃣ Export-LicenseUsage.ps1
Export current license assignments and usage to CSV for audit or budget reviews.

### 3️⃣ Enable-MailboxAuditing.ps1
Ensure mailbox auditing is turned on for all users (a key compliance step).

### 4️⃣ Export-CAPolicies.ps1
Backup Conditional Access policies using Microsoft Graph for documentation or disaster recovery.

### 5️⃣ Get-RiskyUsers-GraphAPI.ps1
Query Azure AD for users flagged with sign-in or account risk — ideal for incident response.

### 6️⃣ Get-DeviceCompliance.ps1
Pull device compliance states from Intune and summarize into a simple risk report.

## 📦 Prerequisites

- PowerShell 7.x (recommended)
- AzureAD / MSOnline / ExchangeOnlineManagement modules
- Microsoft Graph API token (for advanced modules)

## 💡 Use Case

This toolkit is great for:
- Admins securing hybrid cloud environments
- Teams implementing Zero Trust
- Automating Microsoft 365 security operations

## 📫 Contact

Created by **Joshua Bruner**  
📧 josh.bruner15@yahoo.com  
🔗 [GitHub: JoshTheCyberSecuritySpecialist](https://github.com/JoshTheCyberSecuritySpecialist)
