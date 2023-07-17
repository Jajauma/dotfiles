& "$env:USERPROFILE\Documents\pyuserapps\Scripts\activate.ps1"

# Override only some colors so they work best with vim terminal.
Set-PSReadLineOption -Colors @{
  Command  = "`e[35m" # Magenta
  String   = "`e[91m" # Bright Red
  Variable = "`e[94m" # Bright Blue
}
