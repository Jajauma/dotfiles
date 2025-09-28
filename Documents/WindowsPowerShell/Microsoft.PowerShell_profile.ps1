function Add-PathVariable {
  param(
    [string]$addPath
  )
  if (Test-Path $addPath) {
    $regexAddPath = [regex]::Escape($addPath)
    $arrPath = $env:Path -split ';' | Where-Object {
      $_ -and $_ -notmatch "^$regexAddPath\\?"
    }
    $env:Path = ($arrPath + $addPath) -join ';'
  } else {
    throw "'$addPath' is not a valid path."
  }
}

Add-PathVariable "$HOME\.local\bin"
