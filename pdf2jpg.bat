echo off
echo.
echo.

set DPI=300
set ALPHABITS=2
set QUALITY=80
set FIRSTPAGE=1
set LASTPAGE=9999
REM MEMORY in MB
set MEMORY=1000

set PDFFILE=%1
set JPGFILE=%PDFFILE:.pdf=-%%%03d.jpg

set GS=%2
IF "%GS%" == "" (
	set GS="bin/gswin64c.exe"
)

echo loading %GS%...
echo.

%~dp0%GS% -sDEVICE=jpeg -sOutputFile=%JPGFILE% -r%DPI% -dNOPAUSE -dFirstPage=%FIRSTPAGE% -dLastPage=%LASTPAGE% -dJPEGQ=%QUALITY% -dGraphicsAlphaBits=%ALPHABITS% -dTextAlphaBits=%ALPHABITS% -dNumRenderingThreads=8 -dBufferSpace=%MEMORY%000000 -dBandBufferSpace=%MEMORY%000000 -c %MEMORY%000000 setvmthreshold -f %PDFFILE% -c quit

echo Finished.
pause
