@echo off
setlocal enabledelayedexpansion
for /r %%F in (
    *.shp
) do (
    set "codepagefile=%%~dpnF.cpg"
    >"!codepagefile!" echo SJIS
)
endlocal
