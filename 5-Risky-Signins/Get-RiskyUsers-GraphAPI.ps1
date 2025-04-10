$token = Read-Host "Enter your Microsoft Graph API token"
$headers = @{Authorization = "Bearer $token"}
Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/identityProtection/riskyUsers" -Headers $headers | ConvertTo-Json -Depth 10 | Out-File "RiskyUsers.json"
