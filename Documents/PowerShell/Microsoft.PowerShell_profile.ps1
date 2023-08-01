# Override only some colors so they work best with vim terminal.
Set-PSReadLineOption -Colors @{
  Command  = "`e[35m" # Magenta
  String   = "`e[91m" # Bright Red
  Variable = "`e[94m" # Bright Blue
}

Set-PSReadlineKeyHandler -Chord Ctrl+d -Function DeleteCharOrExit
Set-PSReadlineKeyHandler -Chord Ctrl+u -Function BackwardKillInput
