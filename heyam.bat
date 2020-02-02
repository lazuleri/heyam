<# : heyam.bat
@echo off
@chcp 65001 >nul
setlocal
color f9

::minimalistic youtube-dl cui by janssson eri @lazuleri on github

set "errn=0"
cd %~dp0\_heyam
set PATH=%PATH%;%~dp0
where youtube-dl >nul 2>nul 
if not %errorlevel% geq 0 call :err_%errn% 2>nul

:st
cls
title heyam
set "$profile=0"
echo which profile do you want to use?
echo  0 ^| minimal (default)
echo  1 ^| ^playlist
echo  2 ^| ^audio
echo  3 ^| ^audio playlist
echo  4 ^| raw
set /p $profile=""
call profiles.bat
if %go% equ 1 call :ur
goto st

:ur
cls
title heyam - profile %$title%
echo url to video/playlist
set /p $url=""
call :sv

:sv
cls
echo select where to save
call save.bat
call :dl

:dl
cls
youtube-dl -i --no-warnings -q --console-title  %$subs% %$thumb% %$meta% %$list% %$audio% %$qual% %$url% -o "%file%\%%(uploader)s-%%(title)s.%%(ext)s"
cls
echo done!
pause
goto st
#>



