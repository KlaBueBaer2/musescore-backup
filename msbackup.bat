@echo off
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
:HELP
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
:ABOUT
cls
echo.                                        (Home) (Backup) (Restore) (hElp) (About)
echo.------------------------------------------------------------------------------------------------------------------------
echo.                 (C) Copyright Sunny090628 and sherlocksoftcollection on Github.  All rights reserved.
echo.
echo.                                            Support us by ordering premium!
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