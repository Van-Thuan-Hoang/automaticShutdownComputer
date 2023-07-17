@echo OFF 

ECHO "Choose an option .." 
ECHO "1 = Logoff" 
ECHO "2 = Reboot" 
ECHO "3 = Shutdown" 

SET /p option=Choose one option =  

echo %option% is selected

SET /p waitingTime0=After seconds: = 
SET /A waitingTime=waitingTime0

IF %option%==1 SHUTDOWN.exe /l 
IF %option%==2 SHUTDOWN.exe /r /t %waitingTime0% 
IF %option%==3 SHUTDOWN.exe /s /f /t %waitingTime0% 

PAUSE
