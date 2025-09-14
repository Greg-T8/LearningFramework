param(
[Parameter(Mandatory=$true)][string]$MiObjectId,
[Parameter(Mandatory=$true)][string]$SubId
)
# Example placeholder: show the MI principal and a harmless read
az ad sp show --id $MiObjectId --only-show-errors
az account show --subscription $SubId --only-show-errors
Write-Host "(Replace with a real verification command for your target service)"
exit 0