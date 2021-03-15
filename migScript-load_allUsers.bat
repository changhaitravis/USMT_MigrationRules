echo off
@rem This batch file stores a copy of a local user profile
@rem up to a fileshare located on Travis's machine.
@rem Using another script, or manually this profile can be
@rem loaded into a new computer.

@rem Map share drive
net use t: \\gcasearch.finance.washington.edu\FOR_TERRA
@rem Change to the mapped drive
t:

echo Copying USMT files locally
robocopy "t:\user_migration\USMT" "C:\USMT" /e
robocopy "t:\user_migration\MigCustom" "C:\USMT" /e

@rem Change to local USMT directory
CD C:\USMT
c:

@rem Choose user profile
set /p cName="What is the computer name? "
set cName=%cName: =%

@rem Run loadstate
loadstate T:\MigData\%cName% /ue:NETID\%USERNAME% /i:MigDocs.xml /i:MigApp-with-Office2016.xml /i:Mig-SecureCRT.xml /i:MigApp-WinSCP-standalone.xml /i:MigApp-ExcelLockboxMacro.xml /v:13 /l:T:\MigData\%cName%\loadstate.log /c
pause

@rem Delete mapped drive
NET USE T: /delete /y
exit /b 0
