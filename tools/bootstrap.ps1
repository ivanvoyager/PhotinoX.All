$ErrorActionPreference = "Stop"

Set-Location "$PSScriptRoot/.."

Write-Host "Initializing submodules..." -ForegroundColor Cyan

git submodule update --init --recursive

function Update-Submodule {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Path,

        [Parameter(Mandatory = $true)]
        [string]$Branch
    )

    if (-not (Test-Path -Path $Path -PathType Container)) {
        throw "Submodule directory not found: $Path"
    }

    Write-Host "Updating $Path -> $Branch" -ForegroundColor Cyan

    git -C $Path fetch origin $Branch
    git -C $Path checkout $Branch
    git -C $Path pull --ff-only origin $Branch
}

Update-Submodule "PhotinoX.Native" "master"
Update-Submodule "PhotinoX" "master"
Update-Submodule "PhotinoX.Blazor" "master"
Update-Submodule "PhotinoX.Server" "master"
Update-Submodule "PhotinoX.Samples" "master"
Update-Submodule "PhotinoX.App" "main"

Write-Host "Done." -ForegroundColor Green