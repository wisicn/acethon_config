Set WinScriptHost = CreateObject("WScript.Shell")
WinScriptHost.Run Chr(34) & "c:\yourpath\youdomain.bat" & Chr(34), 0
Set WinScriptHost = Nothing
