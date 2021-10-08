::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCqDJGmW+0UiKRZHcAmXL26pBboO7aX57umMt10hWfE2e4DVlL2NL4A=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCqDJGmW+0UiKRZHcCmXL26JBboO7ajZ7umMt10NUfADdZzZ27eFNfBd713hFQ==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title MuseScore Backupper v1.0 Beta
set currentdir=%CD%
set disk=%cd:~0,2%
:HOME
cls
echo.                                        [Home] (Backup) (Restore) (hElp) (About)
echo.------------------------------------------------------------------------------------------------------------------------
echo.Welcome to the MuseScore Backup Programme!  This programme helps you back up your MuseScore Prefrences! 
echo.
echo.The [] shows what tab you are in. Press the capital letter of each tab to go there.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Press E for help.
choice /c hbrea /n %1

IF ERRORLEVEL ==5 GOTO ABOUT
IF ERRORLEVEL ==4 GOTO HELP
IF ERRORLEVEL ==3 GOTO RESTORE
IF ERRORLEVEL ==2 GOTO BACKUP
IF ERRORLEVEL ==1 GOTO HOME
:BACKUP
cls
echo.                                        (Home) [Backup] (Restore) (hElp) (About)
echo.------------------------------------------------------------------------------------------------------------------------
echo.
echo.Welcome to the backup wizard.  This will guide you on backing up MuseScore.  Currently supports MuseScore 3.
echo.
echo.Press N to continue...
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Press H for help.
choice /c hbrean /n %1
If ERRORLEVEL ==6 GOTO BACKUP2
IF ERRORLEVEL ==5 GOTO ABOUT
IF ERRORLEVEL ==4 GOTO HELP
IF ERRORLEVEL ==3 GOTO RESTORE
IF ERRORLEVEL ==2 GOTO BACKUP
IF ERRORLEVEL ==1 GOTO HOME
:BACKUP2
cls
echo.                                        (Home) [Backup] (Restore) (hElp) (About)
echo.------------------------------------------------------------------------------------------------------------------------
echo.
echo.What do you want to exprot the backup as?
echo.Select the corresponding number.
echo.
echo.1. As a folder
echo.2. As a 7z archive
echo.3. As a rar archive
echo.4. As a zip archive
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Press H for help.
choice /c hbrea1234 /n %1
If ERRORLEVEL ==9 GOTO BACKUPZIP
If ERRORLEVEL ==8 GOTO BACKUPRAR
If ERRORLEVEL ==7 GOTO BACKUP7Z
If ERRORLEVEL ==6 GOTO BACKUPFOLDER
IF ERRORLEVEL ==5 GOTO ABOUT
IF ERRORLEVEL ==4 GOTO HELP
IF ERRORLEVEL ==3 GOTO RESTORE
IF ERRORLEVEL ==2 GOTO BACKUP
IF ERRORLEVEL ==1 GOTO HOME
:BACKUPFOLDER
cls
echo.========================================================================================================================
echo.Lastly, where do you want to backup to? The contents of the settings folder will be copied into this folder.
echo.Example directory: C:\myfiles\musescorebackup
echo.
echo. Backup directory:
set /p folderdir=
echo.
echo.Configuration complete!
pause
cls
echo.Copying.................................................................................................................
C:
cd %USERPROFILE%\AppData\Local\MuseScore\MuseScore3
xcopy /E "%USERPROFILE%\AppData\Local\MuseScore\MuseScore3\" "%folderdir%"
echo.========================================================================================================================
echo.Finished!
pause
GOTO HOME
:BACKUP7Z
cls
echo.========================================================================================================================
echo.Where do you want to backup to? The backup will be created here.
echo.Example directory: C:\myfiles\musescorebackup
echo.
echo.Backup directory:
set /p folderdir=
echo.
echo.Backup archive name eg. mybackup.7z:
set /p backup7z=
echo.
echo.Configuration complete!
pause
cls
echo.Copying.................................................................................................................
C:
cd "%folderdir%"
mkdir 7z
cd %USERPROFILE%\AppData\Local\MuseScore\MuseScore3
xcopy /E "%USERPROFILE%\AppData\Local\MuseScore\MuseScore3\" "%folderdir%\7z\"
%disk%
cd %currentdir%
cd dependencies
cd 7zip
7zG.exe a -t7z %backup7z% "%folderdir%\7z"
xcopy %backup7z% "%folderdir%"
del %backup7z%
rmdir "%folderdir%\7z" /s /q
echo.========================================================================================================================
echo.Finished!
pause
GOTO HOME
:BACKUPRAR
cls
echo.========================================================================================================================
echo.Where do you want to backup to? The backup will be created here.
echo.Example directory: C:\myfiles\musescorebackup
echo.
echo.Backup directory:
set /p folderdir=
echo.
echo.Backup archive name eg. mybackup.rar:
set /p backuprar=
echo.
echo.Configuration complete!
pause
cls
echo.Copying.................................................................................................................
C:
cd "%folderdir%"
mkdir rar
cd %USERPROFILE%\AppData\Local\MuseScore\MuseScore3
xcopy /E "%USERPROFILE%\AppData\Local\MuseScore\MuseScore3\" "%folderdir%\rar\"
%disk%
cd %currentdir%
cd dependencies
cd 7zip
7zG.exe a -t7z %backuprar% "%folderdir%\rar"
xcopy %backuprar% "%folderdir%"
del %backuprar%
rmdir "%folderdir%\rar" /s /q
echo.========================================================================================================================
echo.Finished!
pause
GOTO HOME
:BACKUPZIP
cls
echo.========================================================================================================================
echo.Where do you want to backup to? The backup will be created here.
echo.Example directory: C:\myfiles\musescorebackup
echo.
echo.Backup directory:
set /p folderdir=
echo.
echo.Backup archive name eg. mybackup.zip:
set /p backupzip=
echo.
echo.Configuration complete!
pause
cls
echo.Copying.................................................................................................................
C:
cd "%folderdir%"
mkdir zip
cd %USERPROFILE%\AppData\Local\MuseScore\MuseScore3
xcopy /E "%USERPROFILE%\AppData\Local\MuseScore\MuseScore3\" "%folderdir%\zip\"
%disk%
cd %currentdir%
cd dependencies
cd 7zip
7zG.exe a -t7z %backupzip% "%folderdir%\zip"
xcopy %backupzip% "%folderdir%"
del %backupzip%
rmdir "%folderdir%\zip" /s /q
echo.========================================================================================================================
echo.Finished!
pause
GOTO HOME
:RESTORE
cls
echo.                                        (Home) (Backup) [Restore] (hElp) (About)
echo.------------------------------------------------------------------------------------------------------------------------
echo.
echo.Welcome to the restore wizard.  This will restore your MuseScore settings from your computer.
echo.
echo.Press N to continue...
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Press H for help.
choice /c hbrean /n %1
IF ERRORLEVEL ==5 GOTO RESTORE2
IF ERRORLEVEL ==5 GOTO ABOUT
IF ERRORLEVEL ==4 GOTO HELP
IF ERRORLEVEL ==3 GOTO RESTORE
IF ERRORLEVEL ==2 GOTO BACKUP
IF ERRORLEVEL ==1 GOTO HOME
:RESTORE2
cls
echo.                                        (Home) (Backup) [Restore] (hElp) (About)
echo.------------------------------------------------------------------------------------------------------------------------
echo.
echo.What is your archive stored as?
echo.
echo.NOTE: CURRENTLY UNABLE TO RESTORE FORM ARCHIVE.  WILL BE ADDED IN NEXT MAJOR RELEASE.  CURRENT WORKAROUND IS TO EXTRACT
echo.THE ARCHIVE.
echo.
echo.Select the corresponding number.
echo.
echo.1. As a folder
echo.
echo..
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Press H for help.
choice /c hbrea1 /n %1
If ERRORLEVEL ==6 GOTO RESTOREFOLDER
IF ERRORLEVEL ==5 GOTO ABOUT
IF ERRORLEVEL ==4 GOTO HELP
IF ERRORLEVEL ==3 GOTO RESTORE
IF ERRORLEVEL ==2 GOTO BACKUP
IF ERRORLEVEL ==1 GOTO HOME
:RESTOREFOLDER
cls
echo.========================================================================================================================
echo.
echo.Which disk is your backup on?
echo.Example: C:
echo.
echo.Disk:
set /p backupdisk=
echo.
echo.Which folder is your backup in?
echo.Example backup folder: C:\myfiles\musescorebackup
echo.
echo.Backup directory:
set /p backupdir=
echo.
echo.Configuration complete!
pause
cls
echo.Restoring...............................................................................................................
C:
rmdir "%USERPROFILE%\AppData\Local\MuseScore\MuseScore3" /s /q
cd %USERPROFILE%\AppData\Local\MuseScore
mkdir MuseScore3
xcopy /e "%backupdir%" "%USERPROFILE%\AppData\Local\MuseScore\MuseScore3"
echo.========================================================================================================================
echo.Finished!
pause
GOTO HOME
:HELP
cls
echo.                                        (Home) (Backup) (Restore) [hElp] (About)
echo.------------------------------------------------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Press H for help.
choice /c hbrea /n %1
IF ERRORLEVEL ==5 GOTO ABOUT
IF ERRORLEVEL ==4 GOTO HELP
IF ERRORLEVEL ==3 GOTO RESTORE
IF ERRORLEVEL ==2 GOTO BACKUP
IF ERRORLEVEL ==1 GOTO HOME
:ABOUT
cls
echo.                                        (Home) (Backup) (Restore) (hElp) [About]
echo.------------------------------------------------------------------------------------------------------------------------
echo.                 (C) Copyright Sunny090628 and sherlocksoftcollection on Github.  All rights reserved.
echo.
echo.
echo.
echo.   Version Info:
echo.   MuseScore Backupper v1.0 beta.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Press H for help.
choice /c hbrea /n %1
IF ERRORLEVEL ==5 GOTO ABOUT
IF ERRORLEVEL ==4 GOTO HELP
IF ERRORLEVEL ==3 GOTO RESTORE
IF ERRORLEVEL ==2 GOTO BACKUP
IF ERRORLEVEL ==1 GOTO HOME
:BLANK
cls
echo.                                        (Home) (Backup) (Restore) (hElp) (About)
echo.------------------------------------------------------------------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.------------------------------------------------------------------------------------------------------------------------
echo.Press H for help.
choice /c hbrea /n %1
IF ERRORLEVEL ==5 GOTO ABOUT
IF ERRORLEVEL ==4 GOTO HELP
IF ERRORLEVEL ==3 GOTO RESTORE
IF ERRORLEVEL ==2 GOTO BACKUP
IF ERRORLEVEL ==1 GOTO HOME