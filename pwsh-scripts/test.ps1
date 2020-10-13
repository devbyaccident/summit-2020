Describe "Is it running doom?" {
  Context "Checking if the process is running" {

    It 'Is Linux' {
      $IsLinux | Should -be $true
    }

    It 'Freedoom is downloaded' {
      test-path /mnt/d/GitHub/chocolate-doom/data/freedoom-0.12.1/ | Should -be $true
    }

    It 'Packages are installed' {
      $packages = sudo apt list --installed | grep gcc
      $packages | Should -Not -BeNullOrEmpty
    }

    It 'Packages are not installed' {
      $packages = sudo apt list --installed | grep foobar
      $packages | Should -BeNullOrEmpty
    }

    It 'Doom is running' {
      get-process -name "chocolate-doom" | Should -be $true
    }
  }
}