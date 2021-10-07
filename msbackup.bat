@echo off
title MuseScore Backupper v1.0 Developer Nightly Build
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
xcopy /E %USERPROFILE%\AppData\Local\MuseScore\MuseScore3 "%folderdir%"
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
echo.Backup archive name eg. mybackup.rar:
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
xcopy /E %USERPROFILE%\AppData\Local\MuseScore\MuseScore3 "%folderdir%\7z"
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
xcopy /E %USERPROFILE%\AppData\Local\MuseScore\MuseScore3 "%folderdir%\rar"
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
xcopy /E %USERPROFILE%\AppData\Local\MuseScore\MuseScore3 "%folderdir%\zip"
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
echo.   MuseScore Backupper v0.1 development nightly build.  Revision no. abcdefg
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