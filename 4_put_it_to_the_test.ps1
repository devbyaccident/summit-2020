# Follow the instructions to build a docker container and import it into WSL using the Dockerfile under RST
# RST of course stands for Rip, Shread, Tear, cause Doom
# Install and configure xfce4 manually
# It might take a few restarts...
# But once it's built, copy the Freedoom .WAD files into chocolate-doom/data and run `chocolate-doom` from a terminal

# Chocolate Doom
git clone https://github.com/chocolate-doom/chocolate-doom.git

# Build it
https://www.chocolate-doom.org/wiki/index.php/Building_Chocolate_Doom_on_Debian

# Freedoom 
https://freedoom.github.io/download.html

# Open the distro with the right user
wsl -d Ubuntu_Demo -u doomguy