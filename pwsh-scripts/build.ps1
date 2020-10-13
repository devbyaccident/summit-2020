properties {
  $doomPath = "/mnt/d/GitHub/chocolate-doom"
  $freeDoom = "https://github.com/freedoom/freedoom/releases/download/v0.12.1/freedoom-0.12.1.zip"
}

task default -depends Make

task Prereqs {
  Write-host "Install"
  sudo apt-get install `
    zip `
    gcc `
    make `
    libsdl2-dev `
    libsdl2-net-dev `
    libsdl2-mixer-dev `
    python-pil `
    automake `
    autoconf `
    libtool `
    git `
    pkg-config
}

task Make -depends Prereqs, Download {
  Write-host "Make"
  cd $doomPath
  Invoke-item $doomPath/autogen.sh
  sudo make
  sudo make install
}

task Download {
  Write-host "Download"
  $isDoom = test-path $doomPath/data/freedoom-0.12.1/
  if (!$isDoom) {
    Invoke-WebRequest $freeDoom -OutFile $doomPath/data/freedoom.zip
    sudo unzip $doomPath/data/freedoom.zip
  }
  
}

task ? -Description "Helper to display task info" {
  Write-Documentation
}