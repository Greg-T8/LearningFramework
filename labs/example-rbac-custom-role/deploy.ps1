param(
[Parameter(Mandatory=$true)][string]$SubId,
[string]$RoleFile = "role.example.json"
)
$ErrorActionPreference = 'Stop'
az account set --subscription $SubId | Out-Null
$roleJson = Get-Content -Raw $RoleFile | ConvertFrom-Json
$roleJson.AssignableScopes = @("/subscriptions/$SubId")
$Temp = Join-Path $PSScriptRoot "role.temp.json"
$roleJson | ConvertTo-Json -Depth 10 | Set-Content $Temp
az role definition create --role-definition $Temp
Write-Host "Role definition submitted."