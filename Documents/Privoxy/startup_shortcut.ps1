$privoxy_dir = $PSScriptRoot
$privoxy_exe = "$privoxy_dir\privoxy.exe"
$startup_dir = [environment]::getfolderpath("startup")

$wscript_shell = New-Object -COMObject WScript.Shell
$shortcut = $wscript_shell.CreateShortcut("$startup_dir\Privoxy.lnk")
$shortcut.TargetPath = $privoxy_exe
$shortcut.WorkingDirectory = $privoxy_dir
$shortcut.WindowStyle = 7
$shortcut.Save()
