#Requires AutoHotkey v2.0
#SingleInstance Force

; Configure hotkeys to enable each layout separately. Doesn't work on the
; desktop or in a Win+R window. Also disable default Win+Space combo for now.
SetCapsLockState("AlwaysOff")
CapsLock Up::SwitchToLang(0x0409)  ; US English (Language ID: 0x0409)
+CapsLock Up::SwitchToLang(0x0419) ; Russian (Language ID: 0x0419)
#Space::Return

SwitchToLang(Lang) {
  static WM_INPUTLANGCHANGEREQUEST := 0x50
  PostMessage(WM_INPUTLANGCHANGEREQUEST, 0, Lang,, "A")
}

; Prevent the screen from turning off while using a game controller.
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
