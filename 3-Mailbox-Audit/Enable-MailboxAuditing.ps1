Connect-ExchangeOnline
Get-Mailbox -ResultSize Unlimited | Set-Mailbox -AuditEnabled $true
