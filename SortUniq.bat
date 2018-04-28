@echo off
setlocal enabledelayedexpansion

type Test.txt | sort | call Uniq.bat

pause