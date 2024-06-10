
param (
    [string]$arch = "amd64",
    [string]$hostArch = "amd64"
)

# Save the current working directory
$originalWd = Get-Location

# Define the path to Launch-VsDevShell.ps1
$vsDevShellPath = "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\Launch-VsDevShell.ps1"

# Check if the Launch-VsDevShell.ps1 file exists
if (Test-Path $vsDevShellPath) {
    # Set the architecture and call Launch-VsDevShell.ps1
    & "$vsDevShellPath" -Arch $arch -HostArch $hostArch
    
    # Restore the original working directory
    Set-Location $originalWd

    # Launch Neovim
    nvim
} else {
    Write-Host "Error: Could not find Launch-VsDevShell.ps1 at the specified path."
}

