$token = Read-Host "Enter your Microsoft Graph API token"
$headers = @{Authorization = "Bearer $token"}
Invoke-RestMethod -Uri "https://graph.microsoft.com/beta/identity/conditionalAccess/policies" -Headers $headers | ConvertTo-Json -Depth 10 | Out-File "CAPoliciesBackup.json"
