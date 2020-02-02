<# : save.bat
@echo off
@chcp 65001>nul
for /f "delims=" %%I in ('powershell -noprofile "iex (${%~f0} | out-string)"') do (
    set file=%%~I
)
goto :eof
#>

Add-Type -AssemblyName System.Windows.Forms
$f = new-object Windows.Forms.FolderBrowserDialog
$f.RootFolder = %UserProfiles%
[void]$f.ShowDialog()
if ($f.Multiselect) { $f.SelectedPath } else { $f.SelectedPath } 