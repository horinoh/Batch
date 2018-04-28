@echo off
@setlocal enabledelayedexpansion

@echo [Current Directory] %~dp0
@echo [ ] %0
@echo [ "" Removed ] %~0
@echo [ Attribute ] %~a0
@echo [ Drive ] %~d0
@echo [ Fullpath ] %~f0
@echo [ Basename ] %~n0
@echo [ Path ] %~p0
@echo [ Shortname ] %~s0
@echo [ Date ] %~t0
@echo [ Extension ] %~x0
@echo [ Filesize ] %~z0

pause
