#Requires AutoHotkey v2.0
#SingleInstance Force

SetCapsLockState("AlwaysOff")

; CapsLock switches to US English (Language ID: 0x0409)
CapsLock Up::SwitchToLang(0x0409)

; Shift+CapsLock switches to Russian (Language ID: 0x0419)
+CapsLock Up::SwitchToLang(0x0419)

; Helper function to switch keyboard layouts
SwitchToLang(Lang) {
  static WM_INPUTLANGCHANGEREQUEST := 0x50
  PostMessage(WM_INPUTLANGCHANGEREQUEST, 0, Lang,, "A")
}
