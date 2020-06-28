# Just in case you want to use it here
pwsh -wd /mnt/d/GitHub/summit2020

# Run Linux commands from PowerShell
ls # Just an alias for Get-ChildItem
ls -al # This won't work :(
wsl ls
wsl ls -al # This will work :)

# Using with specific distros
wsl go version
wsl -d GoDistro go version

# Using specific users
wsl whoami
wsl -u root whoami

# You can use anything from the path in WSL
wsl # Go into WSL distro
whoami # Use whoami from WSL
whoami.exe # Use whoami from Windows
which whoami
which whoami.exe
terraform version # Doesn't work on my default wsl
terraform.exe version # Does work on my default wsl
# Change directory to ../<Any terraform repo>
terraform.exe init
# Exit the distro

# You can also pipe Windows commands into WSL
choco list -lo
choco list -lo | wsl grep terraform

# You can also use it with Visual Studio Code Remote Workspaces
code --remote wsl+GoDistro /mnt/d/GitHub/summit2020/go_files

# If you're following the best practice and versioning your WSL distro, 
# you can use the VS Code Remote Containers extension with the Dockerfile you build your WSL distro with