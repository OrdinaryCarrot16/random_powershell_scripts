:: Requires 'exiftool'.

@echo off

set /P file=Enter file for metadata changes: 

set /P author=Enter author name: 
set /P title=Enter name of photo: 

set /P year=Enter year photo was made: 
set /P month=Enter month photo was made: 
set /P day=Enter number of day photo was made: 

set /P comment=Enter comment(?): 


echo exiftool -png:author="%author%" -png:title="%title%" -png:timestamp="%year%:%month%:%day% 12:00:00" -png:comment="%comment%" "%file%"

exiftool -png:author="%author%" -png:title="%title%" -png:creationtime="%year%:%month%:%day% 12:00:00" -png:comment="%comment%" "%file%"

pause
