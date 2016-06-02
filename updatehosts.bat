# ===================================================================
#
# (UPDATE HOSTS)  by https://github.com/AranciataExcess/
# Downloads HOST file and copies to %Windir%\System32\drivers\etc 
#
# Part of Nightly Scheduled Task at 12.01AM 
#
# ===================================================================
#
# 
# BEGIN SCRIPT
#
# ------------------------------------------------------------------
#
# Copy HOSTS from https://github.com/StevenBlack/hosts
ECHO Downloading updated HOSTS from Github
PowerShell.exe -Command "& '%~dpn0.ps1'"
ECHO Download completed.
#
# ------------------------------------------------------------------
# Copy HOSTS file to %Windir%\System32\drivers\etc
ECHO Copying HOSTS to Windows
SET hostpath=%Windir%\System32\drivers\etc
# backup old HOSTS
REN %hostpath%\hosts hosts.back 
COPY "%~dp0hosts" %hostpath%\hosts
#
# ------------------------------------------------------------------
#
# Create a running scheduled task to download and update
SchTasks /Create /SC WEEKLY /D MON,TUE,WED,THU,FRI /TN UpdateHosts /TR C:\UpdateHosts\updatehosts.bat /ST 02:00
@PAUSE
# 
# END SCRIPT