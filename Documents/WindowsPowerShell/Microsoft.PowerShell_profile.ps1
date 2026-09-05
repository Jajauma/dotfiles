function rmrf {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Target
  )
  Remove-Item -Recurse -Force $Target
}
