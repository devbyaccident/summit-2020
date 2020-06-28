# Open a new pane with WSL Linux, run this
pwsh -wd /mnt/d/GitHub/summit2020

# PowerShell 7 doesn't care about slashes in file paths
Test-Path .\directorytest/this\is/a\really/long/directory\

# PowerShell 7 doesn't care about case either
$hash = @{ 'key' = 'val' }
$hash['KEY']

# PowerShell does care about environment variables
# These are NOT consistant cross-platform
$env:COMPUTERNAME
$env:USERNAME

# These are consistant
[System.Environment]::MachineName
[Environment]::UserName

# This is also consistant... Kind of
$env:PATH
[Environment]::GetEnvironmentVariable('PATH')

# Linux doesn't set all the same environment variables that Windows does, but PATH is shared
Get-ChildItem -Path env:
Get-ChildItem -Path env: | Measure-Object

# Sometimes the output of a Linux command isn't compatible with the PowerShell class...
date
$date = date
$date.GetType()
[datetime]($date)
date +'%m/%d/%Y %H:%M:%S'
[datetime](date +'%m/%d/%Y %H:%M:%S')
Get-Date

# There is also a specific IO.Path class in .NET Core
[io.path]::DirectorySeparatorChar
[io.path]::PathSeparator
[io.path]::VolumeSeparatorChar

# Cross-platform swtich statement
# https://twitter.com/TylerLeonhardt/status/1220165995710443520

switch ($true) {
    $IsWindows { Write-Output "Windows with PS 6+" }
    $IsMacOS { Write-Output "Mac" }
    $IsLinux { Write-Output "Linux" }
    Default { Write-Output "Windows PowerShell" }
}