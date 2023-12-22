Macro {
  description="Shift+Menu: show context menu (text version)";
  area="Shell";
  key="ShiftApps";
  flags="";
  action = function()
    Keys("F11 x Enter")
    if Menu.Id == "5099B83C-4222-4325-95A6-F6FC4635DED6" then
      Keys("2")
    end
  end;
}

Macro {
  description="Alt+Menu: show context menu (GUI version)";
  area="Shell";
  key="AltApps";
  flags="";
  action = function()
    Keys("F11 x Enter")
    if Menu.Id == "5099B83C-4222-4325-95A6-F6FC4635DED6" then
      Keys("1")
    end
  end;
}

Macro {
  description="Shift+Menu: show context menu (text version)";
  area="Tree";
  key="ShiftApps";
  flags="";
  action = function()
    Keys("F11 x Enter")
    if Menu.Id == "5099B83C-4222-4325-95A6-F6FC4635DED6" then
      Keys("2")
    end
  end;
}

Macro {
  description="Alt+Menu: show context menu (GUI version)";
  area="Tree";
  key="AltApps";
  flags="";
  action = function()
    Keys("F11 x Enter")
    if Menu.Id == "5099B83C-4222-4325-95A6-F6FC4635DED6" then
      Keys("1")
    end
  end;
}
