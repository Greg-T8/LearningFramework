param(
[Parameter(Mandatory=$true)][string]$Topic,
[string]$Outcome = "Tiny outcome"
)
$Date = (Get-Date).ToString('yyyy-MM-dd')
$Slug = "$Date-$($Topic -replace '\s+','-').ToLower()"
$Dir = Join-Path "sessions" $Slug
New-Item -ItemType Directory -Path $Dir -Force | Out-Null
@"
# $Date – $Outcome
## Plan
- Outcome: $Outcome
- Labs to run: [ ] [ ] [ ]


## Build (notes)
## Check
## Cleanup
## What broke / How I fixed it
-
## Next
-
"@ | Set-Content -Path (Join-Path $Dir "README.md")
if (-not (git rev-parse --is-inside-work-tree 2>$null)) { git init | Out-Null }
try { git checkout -b "session/$Slug" } catch { git checkout -b "session/$Slug" }
git add .
git commit -m "chore(session): start $Slug"
Write-Host "Session scaffolded at $Dir and branch session/$Slug created."