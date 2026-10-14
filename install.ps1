<#
.SYNOPSIS
    Clean AI Code - Windows PowerShell Installer
.DESCRIPTION
    Installs clean code anti-vice configurations across Antigravity, Cursor, Claude, and Copilot on Windows.
#>

[CmdletBinding()]
param (
    [switch]$AntigravityGlobal,
    [switch]$AntigravityLocal,
    [switch]$Cursor,
    [switch]$Claude,
    [switch]$Copilot,
    [switch]$All
)

$RepoRoot = $PSScriptRoot
$TargetDir = Get-Location

function Install-AntigravityGlobal {
    Write-Host "[+] Installing Antigravity / Gemini global skill & rule..." -ForegroundColor Cyan
    $homeDir = [System.Environment]::GetFolderPath('UserProfile')
    $skillDir = Join-Path $homeDir ".gemini\config\skills\clean-code"
    $ruleDir = Join-Path $homeDir ".gemini\config\rules"

    New-Item -ItemType Directory -Force -Path (Join-Path $skillDir "references") | Out-Null
    New-Item -ItemType Directory -Force -Path $ruleDir | Out-Null

    Copy-Item (Join-Path $RepoRoot "platforms\antigravity\skill\clean-code\SKILL.md") (Join-Path $skillDir "SKILL.md") -Force
    Copy-Item (Join-Path $RepoRoot "platforms\antigravity\skill\clean-code\references\anti-patterns.md") (Join-Path $skillDir "references\anti-patterns.md") -Force
    Copy-Item (Join-Path $RepoRoot "platforms\antigravity\rule\GEMINI.md") (Join-Path $ruleDir "clean-code.md") -Force

    Write-Host "    Installed to: $skillDir" -ForegroundColor Green
    Write-Host "    Installed to: $ruleDir\clean-code.md" -ForegroundColor Green
}

function Install-AntigravityLocal {
    Write-Host "[+] Installing Antigravity / Gemini into workspace ($TargetDir)..." -ForegroundColor Cyan
    $skillDir = Join-Path $TargetDir ".agents\skills\clean-code"
    New-Item -ItemType Directory -Force -Path (Join-Path $skillDir "references") | Out-Null

    Copy-Item (Join-Path $RepoRoot "platforms\antigravity\skill\clean-code\SKILL.md") (Join-Path $skillDir "SKILL.md") -Force
    Copy-Item (Join-Path $RepoRoot "platforms\antigravity\skill\clean-code\references\anti-patterns.md") (Join-Path $skillDir "references\anti-patterns.md") -Force
    Copy-Item (Join-Path $RepoRoot "platforms\antigravity\rule\GEMINI.md") (Join-Path $TargetDir "GEMINI.md") -Force

    Write-Host "    Created: .agents\skills\clean-code" -ForegroundColor Green
    Write-Host "    Created: GEMINI.md" -ForegroundColor Green
}

function Install-Cursor {
    Write-Host "[+] Installing Cursor rules..." -ForegroundColor Cyan
    $cursorRulesDir = Join-Path $TargetDir ".cursor\rules"
    New-Item -ItemType Directory -Force -Path $cursorRulesDir | Out-Null

    Copy-Item (Join-Path $RepoRoot "platforms\cursor\rules\clean-code.mdc") (Join-Path $cursorRulesDir "clean-code.mdc") -Force
    Copy-Item (Join-Path $RepoRoot "platforms\cursor\.cursorrules") (Join-Path $TargetDir ".cursorrules") -Force

    Write-Host "    Created: .cursor\rules\clean-code.mdc" -ForegroundColor Green
    Write-Host "    Created: .cursorrules" -ForegroundColor Green
}

function Install-Claude {
    Write-Host "[+] Installing Claude CLAUDE.md..." -ForegroundColor Cyan
    Copy-Item (Join-Path $RepoRoot "platforms\claude\CLAUDE.md") (Join-Path $TargetDir "CLAUDE.md") -Force
    Write-Host "    Created: CLAUDE.md" -ForegroundColor Green
}

function Install-Copilot {
    Write-Host "[+] Installing GitHub Copilot instructions..." -ForegroundColor Cyan
    $githubDir = Join-Path $TargetDir ".github"
    New-Item -ItemType Directory -Force -Path $githubDir | Out-Null
    Copy-Item (Join-Path $RepoRoot "platforms\copilot\copilot-instructions.md") (Join-Path $githubDir "copilot-instructions.md") -Force
    Write-Host "    Created: .github\copilot-instructions.md" -ForegroundColor Green
}

if ($All) {
    Install-AntigravityLocal
    Install-Cursor
    Install-Claude
    Install-Copilot
    Write-Host "[✓] All presets installed!" -ForegroundColor Green
    exit
}

if ($AntigravityGlobal) { Install-AntigravityGlobal; exit }
if ($AntigravityLocal) { Install-AntigravityLocal; exit }
if ($Cursor) { Install-Cursor; exit }
if ($Claude) { Install-Claude; exit }
if ($Copilot) { Install-Copilot; exit }

Write-Host "Clean AI Code Installer for Windows" -ForegroundColor Yellow
Write-Host "Run with: .\install.ps1 -AntigravityGlobal | -AntigravityLocal | -Cursor | -Claude | -Copilot | -All"
