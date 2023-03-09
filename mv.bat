@echo off
if "%~2" == "" (
  echo Please provide two arguments.
  echo Example: mv "C:\old_file.txt" "C:\new_folder\new_file.txt"
  exit /b 1
)
move %1 %2
