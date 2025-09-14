param(
[Parameter(Mandatory=$true)][string]$RoleName
)
# Remove assignments first (user fills correct filters)
# az role assignment delete --assignee <principalId> --role $RoleName
# Then remove role definition
az role definition delete --name $RoleName