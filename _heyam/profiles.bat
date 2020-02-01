<# : profiles.bat
@echo off
@chcp 65001 >nul
goto %$profile%
goto :eof

::custom profiles can be added here, add more variables if needed

:0
set "$title=minimal"
set "$subs=--embed-subs"
set "$thumb=--embed-thumbnail"
set "$meta=--add-metadata"
set "$list=--no-playlist"
set "$qual=-f "best[height<=1080]""
set go=1
goto :eof

:1
set "$title=playlist"
set "$subs=--embed-subs"
set "$thumb=--embed-thumbnail"
set "$meta=--add-metadata"
set "$list=--yes-playlist"
set "$qual=-f "best[height<=1080]""
set go=1
goto :eof

:2
set "$title=audio"
set "$meta=--add-metadata"
set "$list=--no-playlist"
set "$audio=-x"
set go=1
goto :eof

:3
set "$title=audio playlist"
set "$meta=--add-metadata"
set "$list=--yes-playlist"
set "$audio=-x"
set go=1
goto :eof

:4
set "$title=raw"
set "$subs=--embed-subs"
set "$thumb=--embed-thumbnail"
set "$meta=--add-metadata"
set "$list=--no-playlist"
set go=1
goto :eof
#>