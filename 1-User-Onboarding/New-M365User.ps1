<#
.SYNOPSIS
Creates a new Microsoft 365 user and assigns licenses.
.DESCRIPTION
This script connects to Microsoft Online Services, creates a new user, sets their location, assigns a license, and enables mailbox auditing.
#>

Connect-MsolService

$UserPrincipalName = Read-Host "Enter UPN (e.g. user@domain.com)"
$DisplayName = Read-Host "Enter full name"
$FirstName = Read-Host "Enter first name"
$LastName = Read-Host "Enter last name"
$UsageLocation = "US"
$LicenseSku = "yourtenant:ENTERPRISEPACK"

New-MsolUser -UserPrincipalName $UserPrincipalName `
             -DisplayName $DisplayName `
             -FirstName $FirstName `
             -LastName $LastName `
             -UsageLocation $UsageLocation `
             -LicenseAssignment $LicenseSku `
             -ForceChangePassword $true

Connect-ExchangeOnline -UserPrincipalName $UserPrincipalName
Set-Mailbox $UserPrincipalName -AuditEnabled $true
