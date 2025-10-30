Write-Host "Setting up Presentation AI workspace..."
if (!(Test-Path -Path "sandbox")) { New-Item -ItemType Directory -Force -Path "sandbox" }
if (!(Test-Path -Path "presentations")) { New-Item -ItemType Directory -Force -Path "presentations" }
if (!(Test-Path -Path "presentations\presentation.css")) {
    New-Item -ItemType File -Path "presentations\presentation.css" -Force | Out-Null
    Add-Content "presentations\presentation.css" "/* Default Marp presentation theme */"
}
Write-Host "Setup complete! Open 'presentation.code-workspace' in VS Code."