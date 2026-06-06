#Requires AutoHotkey v2.0
#SingleInstance Force

SetTimer(CheckVMwareActive, 55000)
CheckVMwareActive()

CheckVMwareActive() {
  static ES_CONTINUOUS := 0x80000000
  static ES_SYSTEM_REQUIRED := 0x00000001
  static ES_DISPLAY_REQUIRED := 0x00000002
  DllCall(
    "Kernel32.dll\SetThreadExecutionState",
    "UInt",
    WinActive("VMware Workstation")
      ? ES_CONTINUOUS | ES_SYSTEM_REQUIRED | ES_DISPLAY_REQUIRED
      : ES_CONTINUOUS)
}
