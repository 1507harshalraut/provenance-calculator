# Sync latest code + provenance notes from GitHub (run from repo root).
# Usage: .\scripts\sync_from_remote.ps1

param(
    [string]$Branch = "master"
)

$ErrorActionPreference = "Stop"
$repoRoot = Split-Path -Parent $PSScriptRoot
Set-Location $repoRoot

Write-Host "Pulling origin/$Branch ..."
git pull origin $Branch

Write-Host "Fetching provenance notes ..."
git fetch origin refs/notes/provenance:refs/notes/provenance

Write-Host ""
Write-Host "Done. Commits with provenance notes:"
git notes --ref=provenance list
