@echo off
setlocal

set zipFile=%1
set zipFolder=%zipFile:.zip=%

if not exist %zipFile% (
    echo Die ZIP-Datei "%zipFile%" existiert nicht.
    goto :eof
)

if exist %zipFolder% (
    echo Der Ordner "%zipFolder%" existiert bereits.
    goto :eof
)

echo Entpacke die Dateien aus "%zipFile%"...
powershell Expand-Archive -LiteralPath "%zipFile%" -DestinationPath "%zipFolder%"
echo Fertig!

endlocal
