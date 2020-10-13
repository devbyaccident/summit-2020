# Install WSL as an appx package
Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1604 -OutFile Ubuntu.appx -UseBasicParsing
Add-AppxPackage .\Ubuntu.appx

# Import .tar as a WSL Distro 
# (Needs a folder at $env:USERPROFILE\.wsl)
wsl --import GoDistro $env:USERPROFILE\.wsl\GoDistro .\goDist.tar

# Show that the import worked
wsl -l -v

# Export the GoDistro
wsl --export GoDistro ./NewGoDistro.tar

# Import WSL from a container
docker build .\go_files\ -t go_distro
docker run -it go_distro zsh

# In another session because docker is weird like that
docker export --output D:\GitHub\summit-2020\GoDist.tar <Container ID>

