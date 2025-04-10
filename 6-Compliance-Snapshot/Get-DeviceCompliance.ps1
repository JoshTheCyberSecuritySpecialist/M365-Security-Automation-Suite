$token = Read-Host "Enter your Microsoft Graph API token"
$headers = @{Authorization = "Bearer $token"}
Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/deviceManagement/managedDevices" -Headers $headers | ConvertTo-Json -Depth 10 | Out-File "DeviceCompliance.json"
