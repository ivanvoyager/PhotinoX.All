Set-Location "$PSScriptRoot/.."

$dirs = Get-ChildItem -Recurse -Directory |
  Where-Object { $_.Name -in @('bin','obj','ARM64','x64') }

foreach ($d in $dirs) {
    Write-Host "Removing: $($d.FullName)"
    Remove-Item $d.FullName -Recurse -Force -ErrorAction SilentlyContinue
}

"Clean complete."