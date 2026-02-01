@echo off
setlocal enabledelayedexpansion
for /r %%F in (
    *.shp
) do (
    set "codepagefile=%%~dpnF.cpg"
    if exist "!codepagefile!" () else (
        >"!codepagefile!" echo SJIS
    )
)
endlocal
