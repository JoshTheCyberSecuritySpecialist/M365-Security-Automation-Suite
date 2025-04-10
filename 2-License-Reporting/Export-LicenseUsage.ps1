Connect-MsolService
Get-MsolUser | Select-Object DisplayName, UserPrincipalName, @{Name="Licenses";Expression={$_.Licenses.AccountSkuId}} | Export-Csv -Path "LicenseUsage.csv" -NoTypeInformation
